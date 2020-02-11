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
    var quizBrain = QuizeBrain()
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
     @IBAction func anserwButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        quizBrain.checkAnswer (userAnswer)
        if userAnswer == acualAnswer{
            sender.backgroundColor = UIColor.green
            print("Brawo!!! Świetnie Mordeczko")
          
        }else{
            sender.backgroundColor = UIColor.red
            print("Nie tym razem Mordo!")
          
        }
       if questionNumber + 1 < quiz.count{
        questionNumber += 1
        
       }else{
        questionNumber = 0
       }
        Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        }
        
    @objc func updateUI() {
        questionText.text = quiz[questionNumber].text
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = Float(questionNumber + 1) / Float(quiz.count)
             
    }
}
