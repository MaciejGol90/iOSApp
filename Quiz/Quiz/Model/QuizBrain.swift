//
//  QuizeBrain.swift
//  Quiz
//
//  Created by Maciej Golianek on 11/02/2020.
//  Copyright © 2020 Maciej Golianek. All rights reserved.
//

import Foundation
struct QuizBrain {
    
    let quiz = [
        Question(q: "2+4=6?", a: "TAK"),
        Question(q: "Pierwiastek z 9 to 3?", a: "TAK"),
        Question(q: "Czy można dzielić przez 0?", a: "NIE"),
        Question(q: "Czy słoń jest w stanie z siebie wydać dzwięk głośności 188 decybeli", a: "TAK"),
        Question(q: "Czy ryś jest kotem?", a: "TAK"),
        Question(q: "Czy antylopa jest szybsza niż gepard?", a: "NIE"),
        Question(q: "Czy Sylwek i Sylwester to to samo?", a: "TAK"),
        Question(q: "Czy w wodzie jest więcej tleny niż wodoru?", a: "TAK"),
        Question(q: "Czy niebo jest zielone?", a: "NIE"),
        Question(q: "Czy stropian jest jadalny?", a: "NIE"),
        Question(q: "Cynamon to kora?", a: "TAK"),
        Question(q: "Czy światło może mieć różną barwę?" , a: "TAK")
    ]
      var questionNumber = 0
    func checkAnswer (_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            return true
        }else{
    return false
    }
}
    func getQuestionText()->String{
        return quiz[questionNumber].text
    }
    func getProgress()-> Float{
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
}
