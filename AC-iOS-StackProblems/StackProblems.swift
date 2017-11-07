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
    return stack.peek()
}


//Problem Two:
//Find the sum of a Stack of Ints
func sum(of stack: Stack<Int>) -> Int {
    return 0
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
    return Stack<T>()
}


//Problem Four:
//Determine if two stacks are equal
func equalStacks<T: Equatable>(stackOne: Stack<T>, stackTwo: Stack<T>) -> Bool {
    return false
}


//Problem Five:
//Write a function that pushes a new element to the bottom of a Stack
func pushBottom<T>(stack: Stack<T>, newElement: T) -> Stack<T> {
    return Stack<T>()
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
    return false
}

//Bonus: Problem Seven:
//Use a stack to convert a number in decimal to binary
func convertToBinary(_ num: Int) -> String {
    return ""
}


