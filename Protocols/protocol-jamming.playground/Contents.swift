//: Playground - noun: a place where people can play

import UIKit

protocol Number {
    
    var floatValue: Float { get }
    
}

extension Float: Number {
    var floatValue: Float {
        return self
    }
}

extension Double: Number {
    var floatValue: Float {
        return Float(self)
    }
}

var six: Double = 6
var nine: Float = 9

// This is pretty cool!
six.floatValue + nine


extension Int: Number {
    var floatValue: Float {
        return Float(self)
    }
}

extension UInt: Number {
    var floatValue: Float {
        return Float(self)
    }
}

func +(valueA: Number, valueB: Number) -> Float {
    return valueA.floatValue + valueB.floatValue
}

func -(valueA: Number, valueB: Number) -> Float {
    return valueA.floatValue - valueB.floatValue
}

func /(valueA: Number, valueB: Number) -> Float {
    return valueA.floatValue / valueB.floatValue
}

func *(valueA: Number, valueB: Number) -> Float {
    return valueA.floatValue * valueB.floatValue
}

let x: Double = 35.35342
let y: Int = 8
let q = x / y

class Question {
    var type: QuestionType
    var query: String
    var answer: String
    
    init(type: QuestionType, query: String, answer: String) {
        self.type = type
        self.query = query
        self.answer = answer
    }
}

enum QuestionType: String {
    case trueFalse = "Am I legend?"
    case multipleChoice = "Who is the greatest rapper of all time: Biggie, Tupac, JAY Z, Nas, or Andre 3000?"
    case shortAnswer = "What is the capital of Texas?"
    case essay = "In 50 words describe protocols."
    
    // Static constants are created for the lifecycle of the app.
    static let types = [trueFalse, multipleChoice, shortAnswer, essay]
}

enum AnswerType: String {
    case trueFalse = "True"
    case multipleChoice = "Chamilionaire"
    case shortAnswer = "Austin"
    case essay = "Protocols in Swift provide a blueprint for functionality. They do not actually do anything in of themselves until implemented."
    
    static let types = [trueFalse, multipleChoice, shortAnswer, essay]
}

protocol QuestionGenerator {
    func generateRandomQuestion() -> Question
}

class Quiz: QuestionGenerator {
    func generateRandomQuestion() -> Question {
        let randomNumb = Int(arc4random_uniform(4))
        let randomType = QuestionType.types[randomNumb]
        let randomQuery = randomType.rawValue
        let randomAnswer = AnswerType.types[randomNumb].rawValue
        let randomQuestion = Question(type: randomType, query: randomQuery, answer: randomAnswer)
        return randomQuestion
    }
}

let quiz = Quiz()

let firstQuestion = quiz.generateRandomQuestion()

print("QUESTION TYPE: \(firstQuestion.type) \nQUERY: \(firstQuestion.query) \nANSWER: \(firstQuestion.answer)")
