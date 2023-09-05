// sicp (1.1.7 - Square Roots by Newton’s Method)

func abs(_ x: Double) -> Double {
    if x < 0 { return x * -1} else { return x}
}

func square(_ x: Double) -> Double {
    return x * x
}

func goodEnough(_ g: Double, _ x: Double) -> Bool {
    return abs(square(g) - x) < 0.0000000000001
}

func improve(_ g: Double, _ x: Double) -> Double {
    let quotient =  x / g
    let average = (quotient + g) / 2
    return average
}

func sqrtIter(_ g: Double, _ x: Double) -> Double{
    if goodEnough(g, x) {
        return g
    } else {
        return sqrtIter(improve(g, x),x)
    }
}


func sqrt(_ x: Double) -> Double {
    return sqrtIter(1, x)
}


// example
sqrt(1000)
square(sqrt(1000))
