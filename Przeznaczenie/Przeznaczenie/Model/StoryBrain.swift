//
//  StoryBrain.swift
//  Przeznaczenie
//
//  Created by Maciej Golianek on 26/02/2020.
//  Copyright © 2020 Maciej Golianek. All rights reserved.
//

import Foundation
struct StoryBrain {
    var storyNumber = 0
    let stories = [
        Story (title: "Jesteś na skrzyżowaniu dróg.", choice1: "Skręcam w lewo", choice1Destination: 2,
               choice2: "Skręcam w prawo", choice2Destination: 1
        ),
        
        Story(title: "Wjechałeś do sincity", choice1: "Miasto jest czarno-białe", choice1Destination: 3,
              choice2: "Krew wszędzie dziwnie czerwona krew", choice2Destination: 4
        ),
        Story (title: "Wjechałeś do lasu", choice1: "Jest mgliście", choice1Destination:5 , choice2: "Widzisz jezioro w oddali", choice2Destination: 4),
        Story(title: "Zostałeś zamordowany", choice1: "END", choice1Destination: 0, choice2: "END", choice2Destination: 0),
        Story(title: "Dojechałeś do SILENT HILL", choice1: "Ucieksz do szpitala", choice1Destination: 3, choice2: "uciekasz przed siebie", choice2Destination: 3)
    ]
    func getStoryTitle() -> String{
        return stories[storyNumber].title
    }
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
    mutating func nextStory(userChoice: String) {
        
        let currentStory = stories[storyNumber]
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2 {
            storyNumber = currentStory.choice2Destination
        }
    }
    
}

