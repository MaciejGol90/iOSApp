//
//  ViewController.swift
//  EggTimer
//
//  Created by Maciej Golianek on 25/01/2020.
//  Copyright © 2020 Maciej Golianek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    let eggTime = ["Soft": 240, "Medium":360, "Hard": 540]
    
    var secondsReaming = 60
    
    @IBAction func eggButton(_ sender: UIButton) {
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
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    @objc func updateTimer(){
        if secondsReaming > 0 {
            print("\(secondsReaming) seconds")
            secondsReaming -= 1
        }
    }
}

