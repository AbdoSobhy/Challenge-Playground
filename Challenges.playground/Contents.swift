import Foundation


//Add arithmetic operators (add, subtract, multiply, divide) to make the following expressions true. You can use any parentheses you’d like.
//2.25 4.50 1.25 5 = 27

// (2.25 + 4.50) / 1.25 * 5 = 27
func arithmeticOperators() -> String{
    var returnedValue = ""
    
    enum MathOperator: String, CaseIterable {
        case plus = "+"
        case minus = "-"
        case multiply = "*"
        case devide = "/"
    }

    for op1 in MathOperator.allCases {
        for op2 in MathOperator.allCases{
            for op3 in MathOperator.allCases{
                if (2.25 + 4.50) / 1.25 * 5 == 27 {
                    returnedValue = "(2.25 \(op1.rawValue) 4.50) \(op2.rawValue) 1.25 \(op3.rawValue) 5 = 27"
                }
                if "2.25 \(op1) (4.50 \(op2) 1.25) \(op3) 5" == "27" {
                    returnedValue = "2.25 \(op1) (4.50 \(op2) 1.25) \(op3) 5 = 27"
                }
                if "2.25 \(op1) 4.50 \(op2) (1.25 \(op3) 5)" == "27" {
                    returnedValue = "2.25 \(op1) 4.50 \(op2) (1.25 \(op3) 5) = 27"
                }
            }
        }
    }
    return returnedValue
}
print(arithmeticOperators())


// Write a method to determine whether two strings are anagrams or not (examples of anagrams: debit card/bad credit, punishments/nine thumps, etc.) refrain from using ordinary loops, please base your solution completely on Higher-order functions

func isAnagrams(_ lhs: String, _ rhs: String) -> Bool{
    var isAnagrams = false
    
    let rhsTrimmedString = rhs.replacingOccurrences(of: " ", with: "")
    let lhsTrimmedString = lhs.replacingOccurrences(of: " ", with: "")
    let lhsChars = lhsTrimmedString.map{$0}
    let rhsChars = rhsTrimmedString.map{$0}
    let uniqueLhsChars = Array(Set(lhsChars)).sorted()
    let uniqueRhsChars = Array(Set(rhsChars)).sorted()
    
    if uniqueLhsChars == uniqueRhsChars {
        isAnagrams = true
    }
    
    return isAnagrams
}

isAnagrams("punishments", "nine thumps")


//Write a method to generate nth Fibonacci number using two different approaches
    /// First Approache

func fibonacciNum(fibonacciNumber: Int) -> [Int]{
    var sequence = [0,1]
    if fibonacciNumber <= 1 {return sequence}
    for _ in 0...fibonacciNumber - 2{
        let firstElement = sequence[sequence.count - 2]
        let lastElement = sequence.last!
        sequence.append(firstElement + lastElement)
    }
    return sequence
}

fibonacciNum(fibonacciNumber: 9)


    /// Second Approache
func fibonacciNumber(fibonacciNumber: Int) -> [Int]{
    var sequence = [0,1]
    if fibonacciNumber <= 1 {return sequence}
    for index in 0...fibonacciNumber - 2{
        let curentIndex = sequence[index]
        let previousIndex = sequence.last ?? 0
        sequence.append(curentIndex + previousIndex)
    }
    return sequence
}

fibonacciNumber(fibonacciNumber: 9)
