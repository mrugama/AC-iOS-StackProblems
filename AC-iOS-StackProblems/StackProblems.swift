//
//  StackProblems.swift
//  AC-iOS-StackProblems
//
//  Created by C4Q  on 11/7/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import Foundation

//Problem One:
//Find the largest integer in a Stack of Ints
func largestElement<T: Comparable>(in stack: Stack<T>) -> T? {
    var stack = stack
    var largestElementSoFar = stack.pop()!
    while !stack.isEmpty {
        let nextElement = stack.pop()!
        if nextElement > largestElementSoFar {
            largestElementSoFar = nextElement
        }
    }
    return largestElementSoFar
}


//Problem Two:
//Find the sum of a Stack of Ints
func sum(of stack: Stack<Int>) -> Int {
    var sum = 0
    var stack = stack
    while !stack.isEmpty {
        sum += stack.pop()!
    }
    return sum
}

//Problem Three:
//Reverse a Stack without using an Array
//Sample input:
/*
 4
 2
 9
 3
 */

//Sample output:
/*
 3
 9
 2
 4
 */

func reversed<T>(stack: Stack<T>) -> Stack<T> {
    var stack = stack
    var reversedStack = Stack<T>()
    while !stack.isEmpty {
        reversedStack.push(stack.pop()!)
    }
    return reversedStack
}


//Problem Four:
//Determine if two stacks are equal
func equalStacks<T: Equatable>(stackOne: Stack<T>, stackTwo: Stack<T>) -> Bool {
    var stackOne = stackOne
    var stackTwo = stackTwo
    while !stackOne.isEmpty && !stackTwo.isEmpty {
        if stackOne.pop() != stackTwo.pop()! {
            return false
        }
    }
    return stackOne.isEmpty && stackTwo.isEmpty
}

//Problem Five:
//Write a function that pushes a new element to the bottom of a Stack
func pushBottom<T>(stack: Stack<T>, newElement: T) -> Stack<T> {
    var revStack = reversed(stack: stack)
    revStack.push(newElement)
    return reversed(stack: revStack)
}

//Problem Six:
//Determine if the parentheses are balanced in a given String
//Sample input: ((()))
//Sample output: true
//Sample input: ((())
//Sample output: false
//Sample input: (()((())()))
//Sample output: false

func isBalanced(str: String) -> Bool {
    var stack: Stack<Character> = Stack()
    for c in str {
        if c == "(" {
            stack.push(c)
        }
        if c == ")" {
            if stack.isEmpty {
                return false
            }
            stack.pop()
        }
    }
    return stack.isEmpty
}

//Bonus: Problem Seven:
//Use a stack to convert a number in decimal to binary
func convertToBinary(_ num: Int) -> String {
    var num = num
    var binStr = ""
    var stack: Stack<Int> = Stack()
    while num != 0 {
        stack.push(num % 2)
        num /= 2
    }
    while !stack.isEmpty {
        binStr.append(String(stack.pop()!))
    }
    return binStr
}


