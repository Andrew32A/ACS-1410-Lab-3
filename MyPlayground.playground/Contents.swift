import UIKit

// colors
var colorHex: [String:String] = [
    "purple" : "#6C3483",
    "blue" : "#2874A6",
    "green": "#1E8449" ,
    "orange" : "#D35400",
    "yellow" : "#F1C40F",
    "white" : "#FFFFFF",
    "black" : "#000000"
]

var colors = ["red", "orange", "purple", "pink", "blue", "red", "green", "red", "blue", "purple", "pink" , "purple", "purple"]

var colorCount = [String:Int]()

for color in colors {
    if let count = colorCount[color] {
        colorCount[color] = count + 1
    } else {
        colorCount[color] = 1
    }
}

for (color, count) in colorCount {
    print("\(color) - \(count)")
}

// fibo
func fibo(n: Int) -> [Int] {
    var fibonacci = [1, 1]
    
    if n == 1 {
        return [1]
    } else if n == 2 {
        return fibonacci
    } else {
        for i in 2..<n {
            let nextFibonacci = fibonacci[i-1] + fibonacci[i-2]
            fibonacci.append(nextFibonacci)
        }
        return fibonacci
    }
}

print(fibo(n: 7))

// courses and students
var coursesAndStudents = [("MOB", 30), ("BEW", 40), ("FEW", 30), ("DS", 40)]

for (course, count) in coursesAndStudents {
    print("There are \(count) students in the \(course) track")
}

// helper functions
func checkFirstAndLastEqual(_ array: [Int]) -> Bool {
    guard array.count >= 1 else { return false }
    return array.first == array.last
}

func sumOfElements(_ array: [Int]) -> Int {
    return array.reduce(0, +)
}

func reverseToLeft(_ array: [Int]) -> [Int] {
    return Array(array.reversed())
}

func hasOnlyUniqueLetters(_ string: String) -> Bool {
    let uniqueSet = Set(string)
    return uniqueSet.count == string.count
}

func countCharacter(_ string: String, _ character: Character) -> Int {
    return string.reduce(0) { count, currentChar in
        currentChar == character ? count + 1 : count
    }
}

// testing helper functions
let array = [1, 2, 3, 4, 1]
let isFirstAndLastEqual = checkFirstAndLastEqual(array)
let sum = sumOfElements(array)
let reversedArray = reverseToLeft(array)

let string = "hello world"
let hasUniqueLetters = hasOnlyUniqueLetters(string)
let countOfL = countCharacter(string, "l")

print(isFirstAndLastEqual) // true
print(sum) // 11
print(reversedArray) // [4, 3, 2, 1, 1]

print(hasUniqueLetters) // false
print(countOfL) // 3


// grid
var grid: [[Any]] = [
    [0, 0, 0, 0, 0],
    [0, 1, 2, 3, 4],
    [0, 2, 4, 6, 8],
    [0, 3, 6, 9, 12],
    [0, 4, 8, 12, 16]
]

for row in grid {
    var rowString = ""
    for item in row {
        rowString += "\(item) "
    }
    print(rowString)
}

// line break to separate grids
print("")

grid[1] = [" ", " ", " ", " ", " "]
grid[3] = [" ", " ", " ", " ", " "]

for row in grid {
    var rowString = ""
    for item in row {
        rowString += "\(item) "
    }
    print(rowString)
}
