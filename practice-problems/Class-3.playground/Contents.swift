import UIKit

// Arrays Practice
//
// Code the following challenges in a Swift Playground.


// 1. Define an array called  `suitcase`. It should store Strings. Imagine you are going on a trip and you need to put things in your suitcase. Use the append method to add the things you are going to take. You can only append one item at a time. Add at least 4 things to the suitcase.
var suitcase: [String] = [
    "clothes",
    "laptop",
    "toothbrush",
    "snacks"
]

// 2. Print the array `suitcase` to the console.
print(suitcase)

// 3. Using `suitcase`, print the item at index 3 to the console.
print(suitcase[3])

// 4. Given `var fruit = ["🍐", "🐍", "🍏", "🐶", "🍐", "🍋", "🍓"]` Remove the animals from the array of fruits.
var fruit = ["🍐", "🐍", "🍏", "🐶", "🍐", "🍋", "🍓"]
fruit.remove(at:1)
fruit.remove(at:2)
print(fruit)

// 5. Given the following array, insert **Apr** before **May**?
var months = ["Jan", "Feb", "Mar", "May"]
months.insert("Apr", at: 3)
print(months)


// 6. Write a function that takes an Array of String as an input and returns a String. The returned String should be all of the items in the input String with a space between each.

// For example:
func arrayToString(array: [String]) -> String {
    return array.joined(separator: " ")
}

let str = arrayToString(array: ["Swift", "is", "fun!"])
print(str) // "Swift is fun!"


// Call your function with an array of at least 5 words and print the results to the console.

let fiveWords = arrayToString(array: ["hello,", "this", "is", "five", "words"])
print(fiveWords)

// Snaps if you don't have a space at the end! 😎
