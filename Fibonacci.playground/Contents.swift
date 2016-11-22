//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func fibonacciForLoop(n: UInt) -> UInt {
    
    guard n > 1 else {
        return n
    }
    
    var previous1: UInt = 1
    var previous2: UInt = 1
    var value: UInt = 1
    
    for _ in 2..<n {
        value = previous1 + previous2
        previous1 = previous2
        previous2 = value
    }
    
    return value
}

func fibonacciExp(n: UInt) -> UInt {
    guard n > 1 else {
        return n
    }
    
    return fibonacciExp(n: n-1) + fibonacciExp(n: n-2)
}


var fibonacciCache = [UInt:UInt]()
func fibonacci(n: UInt) -> UInt {
    
    guard n > 1 else {
        return n
    }
    
    if let value = fibonacciCache[n] {
        return value
    } else {
        fibonacciCache[n] = fibonacci(n: n-1) + fibonacci(n: n-2)
        return fibonacciCache[n]!
    }
}

fibonacciForLoop(n: 0)
fibonacciForLoop(n: 1)
fibonacciForLoop(n: 2)
fibonacciForLoop(n: 3)
fibonacciForLoop(n: 4)
fibonacciForLoop(n: 5)
fibonacciForLoop(n: 6)
fibonacciForLoop(n: 7)
fibonacciForLoop(n: 8)
fibonacciForLoop(n: 9)
fibonacciForLoop(n: 10)
fibonacciForLoop(n: 10)
fibonacciForLoop(n: 10)

fibonacci(n: 0)
fibonacci(n: 1)
fibonacci(n: 2)
fibonacci(n: 3)
fibonacci(n: 4)
fibonacci(n: 5)
fibonacci(n: 6)
fibonacci(n: 7)
fibonacci(n: 8)
fibonacci(n: 9)
fibonacci(n: 10)
fibonacci(n: 10)
fibonacci(n: 10)
fibonacci(n: 90)


fibonacciExp(n: 0)
fibonacciExp(n: 1)
fibonacciExp(n: 2)
fibonacciExp(n: 3)
fibonacciExp(n: 4)
fibonacciExp(n: 5)
fibonacciExp(n: 6)
fibonacciExp(n: 7)
fibonacciExp(n: 8)
fibonacciExp(n: 9)
fibonacciExp(n: 10)
fibonacciExp(n: 10)
fibonacciExp(n: 10)
//fibonacciExp(n: 90)
