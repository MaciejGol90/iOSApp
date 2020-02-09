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
    let quiz = [
        ["2+4=6?", "TAK"], ["Pierwiastek z 9 to 3?", "TAK"], ["Czy można dzielić przez 0?","NIE"]]
    var questionNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
     @IBAction func anserwButtonPressed(_ sender: UIButton) {
        let userAnserw = sender.currentTitle
        let acualAnswer = quiz[questionNumber][1]
        if userAnserw == acualAnswer{
            print("Brawo!!! Świetnie Mordeczko")
        }else{
            print("Nie tym razem Mordo!")
        }
       if questionNumber + 1 < quiz.count{
        questionNumber += 1
       }else{
        questionNumber = 0
       }
        updateUI ()
        }
        
    func updateUI() {
        questionText.text = quiz[questionNumber][0]
             }
}

