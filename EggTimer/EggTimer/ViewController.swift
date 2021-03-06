//
//  ViewController.swift
//  EggTimer
//
//  Created by Maciej Golianek on 25/01/2020.
//  Copyright © 2020 Maciej Golianek. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
   
    @IBOutlet weak var progrssBar: UIProgressView!
    @IBOutlet weak var changeTitleLabel: UILabel!
    let eggTime = ["Soft": 3, "Medium":300, "Hard": 420]
    var player: AVAudioPlayer!
    var totalTime = 0
    var secondPassed = 0
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
        totalTime = eggTime[hardness]!
        
        progrssBar.progress = 0.0
        secondPassed = 0
        changeTitleLabel.text = "Gotowe za  \(totalTime/60) minuty"
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    @objc func updateTimer(){
        if secondPassed < totalTime {
            secondPassed += 1
            
            let percentageProgress = Float(secondPassed) / Float(totalTime)
            
            progrssBar.progress = percentageProgress
        }else{
            timer.invalidate()
            changeTitleLabel.text = "GOTOWE!!!"
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        }
    }
}
