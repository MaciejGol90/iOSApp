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
        Question(q: "2+4=6?", a: "TAK"),
        Question(q: "Pierwiastek z 9 to 3?", a: "TAK"),
        Question(q: "Czy można dzielić przez 0?", a: "NIE"),
        Question(q: "Czy słoń jest w stanie z sienie wydać dzwięk głośności 188 decybeli", a: "TAK"),
        Question(q: "Czy ryś jest kotem?", a: "TAK"),
        Question(q: "Czy antylopa jest szybsza niż gepard?", a: "NIE"),
        Question(q: "Czy Sylwek i Sylwester to to samo?", a: "TAK"),
        Question(q: "Czy w widzie jest więcej tleny niż wodoru?", a: "TAK"),
        Question(q: "Czy niebo jest zielone?", a: "NIE"),
        Question(q: "Czy stropian jest jadalny?", a: "NIE"),
        Question(q: "Cynamon to kora?", a: "TAK"),
        Question(q: "Czy światło może mieć różną barwę?" , a: "TAK")
        ]
    var questionNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
     @IBAction func anserwButtonPressed(_ sender: UIButton) {
        let userAnserw = sender.currentTitle
        let acualAnswer = quiz[questionNumber].answer
        if userAnserw == acualAnswer{
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
        let timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        }
        
    @objc func updateUI() {
        questionText.text = quiz[questionNumber].text
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear 
             }
    }

