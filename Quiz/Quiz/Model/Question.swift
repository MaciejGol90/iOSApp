//
//  Question.swift
//  Quiz
//
//  Created by Maciej Golianek on 10/02/2020.
//  Copyright © 2020 Maciej Golianek. All rights reserved.
//

import Foundation
struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
    
}
