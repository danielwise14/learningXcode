//
//  Question.swift
//  Quizzler
//
//  Created by Daniel Wise on 2018-12-31.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Question {
    let questionText : String
    let answer : Bool
    
    init(text: String, correctAnswer: Bool) {
        questionText=text
        answer = correctAnswer
        
    }
}
