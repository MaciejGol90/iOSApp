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
    let quiz = ["2+4=6?", "Pierwiastek z 9 to 3?", "Czyna dzielić przez 0"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        questionText.text = quiz[0]
    }
     @IBAction func anserwButtonPressed(_ sender: UIButton) {
    }

    

}

