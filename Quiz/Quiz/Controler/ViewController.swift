//
//  ViewController.swift
//  Quiz
//
//  Created by Maciej Golianek on 03/02/2020.
//  Copyright © 2020 Maciej Golianek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    var quizBrain = QuizBrain()
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        updateUI()
    }
     @IBAction func anserwButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
      let userGorRight = quizBrain.checkAnswer(userAnswer)
        
        if userGorRight {
            sender.backgroundColor = UIColor.green
            print("Brawo!!! Świetnie Mordeczko")
          
        }else{
            sender.backgroundColor = UIColor.red
            print("Nie tym razem Mordo!")
          
        }
        if quizBrain.questionNumber + 1 < quizBrain[quiz.count]{
       if questionNumber + 1 < quiz.count{
        questionNumber += 1

       }else{
        questionNumber = 0
       }
        Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        }

        func updateUI() {
        questionText.text = quizBrain.getQuestionText()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
            progressBar.progress = quizBrain.getProgress()
            
        }
             
    }
}
