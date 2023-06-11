import UIKit

//Count Digits.
let n = -824
func countTheDigits(_ a: Int) -> Int {
    
    var N = a
    if N < 0 {
        N = -N
    }
    var count = 0
    
    while N > 0 {
        N = (N / 10)
        count += 1
    }

    return count
}

countTheDigits(n)


//Reverse a Number
func reverseTheNumber(_ n: Int) -> Int {
    
    var N = n
    var result = 0
    if N < 0 {
        N = -N
    }
    
    while N > 0 {
        result = (result * 10) + (N % 10)
        N = N / 10
    }
    
    if n < 0 {
        return -result
    }
    return result
}

reverseTheNumber(-92348)

//Check Pallindrome
func checkPallindrome(_ n: Int) -> Bool {
    var N = n
    if n < 0 {
        N = -N
    }
    
    var reverse = 0
    
    while N > 0 {
        reverse = reverse * 10 + (N % 10)
        N = N / 10
    }
    
    return reverse == n ? true : false
}

checkPallindrome(341)

//Find GCD
//Brute
func findGCD(_ n1: Int, n2: Int) -> Int {
    var myNum = 0
    if n1 < n2 {
        myNum = n1
    } else {
        myNum = n2
    }
    
    var gcd = 0
    
    for i in 1...myNum {
        if n1 % i == 0 && n2 % i == 0 {
            gcd = i
        }
    }
    
    return gcd
    
}

findGCD(20, n2: 7)

//Find GCD
//Optimal - Euclidean's Theorem

func findGCDOptimal(_ a: Int, _ b: Int) -> Int {
    var A = a
    var B = b
    
    while A > 0 && B > 0 {
        if A > B {
            A = A % B
        } else {
            B = B % A
        }
    }
    
    if A == 0 {
        return B
    } else {
        return A
    }
}

findGCDOptimal(48, 10)


//Armstrong Number
/*
 143  1
 */
//Brute

func checkIfArmstrongBrute(_ a: Int) -> Bool {
    var N = a
    var sum = 0
    var count = 0
    
    while N > 0 {
        N = N / 10
        count += 1
    }
    
    N = a
    
    while N > 0 {
        var lastDigit = N % 10
        var pow = N % 10
        for _ in 1..<count {
            pow = pow * lastDigit
        }
        sum += pow
        N = N/10
    }
    
    if sum == a {
        return true
    } else {
        return false
    }
}

checkIfArmstrongBrute(8208)

//Print all the Divisors of given Number
//BRUTE
func printAllDivisorsBRUTE(_ n: Int) {
    for i in 1...n {
        if n % i == 0 {
            print(i)
        }
    }
}

printAllDivisorsBRUTE(36)


//OPTIMAL

func printAllDivisorsOPTI(_ n: Int) {
 
}

//CheckForPrime

func checkForPrime(_ a: Int) -> Bool {
    var count = 0
    
    for i in 1...a {
        if a % i == 0 {
            count += 1
        }
    }
    
    if count == 2 {
        return true
    } else {
        return false
    }
}

checkForPrime(4)





