import UIKit

// Dictionaries Practice

// Code the following challenges in a Swift Playground.

// 1. Create an array where the key is the name of an app and the value is the time you spend on it daily. Enter a few examples.
var appTime: [String:Int] = [
    "reddit" : 5,
]

print(appTime)

// 2. Give the following dictionary. Access a hex value of a color.
var colorHex: [String:String] = [
    "purple" : "#6C3483",
    "blue" : "#2874A6",
    "green": "#1E8449" ,
    "orange" : "#D35400",
    "yellow" : "#F1C40F",
    "white" : "#FFFFFF",
    "black" : "#000000"
]

// Try to access the value in a safe way. 😅
if let hexValue = colorHex["purple"] {
    print("The hex value for purple is \(hexValue)")
} else {
    print("No hex value found for purple")
}

// 3. Try adding a new color `red` with hex #f20707. Then print the dictionary to see the change.
colorHex["red"] = "#f20707"
print(colorHex)

// 4. Delete any color from the dictionary. Then print the dictionary to see the change.
colorHex.removeValue(forKey: "green")
print(colorHex)
