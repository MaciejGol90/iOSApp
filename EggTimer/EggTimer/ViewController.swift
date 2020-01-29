//
//  ViewController.swift
//  EggTimer
//
//  Created by Maciej Golianek on 25/01/2020.
//  Copyright © 2020 Maciej Golianek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var changeTitleLabel: UILabel!
    let eggTime = ["Soft": 3, "Medium":5, "Hard": 7]
    
    var secondsReaming = 60
    var timer = Timer()
    @IBAction func eggButton(_ sender: UIButton) {
        timer.invalidate()
        let hardness = sender.currentTitle!
//        switch hardness {
//        case "Soft":
//            print(eggTime["Soft"]!)
//        case "Medium":
//            print(eggTime["Medium"]!)
//        case "Hard":
//            print(eggTime["Hard"]!)
//        default:
//            print("nie wybrałeś jajca")
//        }
//        print(eggTime[hardness]!)
        secondsReaming = eggTime[hardness]!
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    @objc func updateTimer(){
        if secondsReaming > 0 {
            print("\(secondsReaming) seconds")
            secondsReaming -= 1
        }else{
            timer.invalidate()
            changeTitleLabel.text = "GOTOWE!!!"
        }
    }
}

