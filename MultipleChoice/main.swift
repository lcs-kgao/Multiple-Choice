//
//  main.swift
//  MultipleChoice
//

import Foundation

// INPUT
// Collect and filter user input here
// Create a variable for the lines
var numberOfLines = 0
while true {
    
    // prompt
    print("How many lines?")
    
    //Test #1, check for nil
    guard let givenLine = readLine() else{
        
        continue
    }
    
    //Test #2, check for integer
    guard let givenInteger = Int(givenLine) else {
        continue
    }
    
    //Test #3, check for range
    if givenInteger < 0 || givenInteger > 10000 {
        continue
    }
    
    //Make the input usable.
    numberOfLines = givenInteger
    break
}

// PROCESS
// Implement the primary logic of the problem here
// Some output may be given here if you desire

// Create an array and a variable for later
var choices : [String] = []
var letters = ""

// Collect multiple input lines

// Create a function for adding the student choices and answers.
func text(lines:Int) -> String {
    let expectedLines = lines
    print("Please enter the \(expectedLines) lines")
    for _ in 1...expectedLines {
        
        // Get the input (use guard-let to guarantee it is not nil)
        // and then print it out
        guard let givenLine = readLine() else {
            // If someone enters nil input, just skip to the next line
            continue
        }
        // Add the choices into the array
        choices.append(givenLine)
        letters = givenLine
    }
    
    //Return the value
    return letters
}
//Apply the function
var studentAnswers = text(lines: numberOfLines)
var correctAnswers = text(lines: numberOfLines)
var rightAnswer = 0

//Check for the right answers
for i in 0...numberOfLines - 1{
    if choices[i] == choices[i + numberOfLines]
    {
        rightAnswer += 1
        
    }
}


// OUTPUT
// Report results to the user here
print("The students answer \(rightAnswer) questions correctly.")


