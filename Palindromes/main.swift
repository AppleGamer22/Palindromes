//  main.swift
//  Palindromes
//  Created by Omri Bornstein on 26/11/17.
//  Copyright © 2017 AppleGamer22 Software Development. All rights reserved.
import Foundation
public func prompt(message: String) -> String {
    print(message)
    let keyboard = FileHandle.standardInput
    let inputData = keyboard.availableData
    let strData = String(data: inputData, encoding: String.Encoding.utf8)!
    return strData.trimmingCharacters(in: CharacterSet.newlines)
}
func isPalindrome(word: String) -> Bool {
    let characters = Array(word.lowercased())
    var currentIndex = 0
    while currentIndex < characters.count / 2 {
        //checks if the n-first character & the n-last characters are the same
        if characters[currentIndex] != characters[characters.count - currentIndex - 1] {
            print("The word '\(word)' is not a palindrome.")
            return false //if not retuern false
        }
        currentIndex += 1 //continue to the next character
    }
    print("The word '\(word)' is a palindrome.")
    return true //otherwise return true
}
let times = Int(prompt(message: "How many word do you want to check?"))!
for _ in 1...times {
    print("Enter you word below to check if its a palindrome:")
    let Word = prompt(message: "Your word: ")
    _ = isPalindrome(word: Word)
}
