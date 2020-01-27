//
//  ViewController.swift
//  EggTimer
//
//  Created by Maciej Golianek on 25/01/2020.
//  Copyright © 2020 Maciej Golianek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    let eggTime = ["Soft": 4, "Medium": 6, "Hard": 9]
    
    @IBAction func eggButton(_ sender: UIButton) {
        let hardness = sender.currentTitle
        switch hardness {
        case "Soft":
            print(eggTime["Soft"]!)
        case "Medium":
            print(eggTime["Medium"]!)
        case "Hard":
            print(eggTime["Hard"]!)
        default:
            print("nie wybrałeś jajca")
        }
}
}

