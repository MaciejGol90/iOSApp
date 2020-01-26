//
//  ViewController.swift
//  EggTimer
//
//  Created by Maciej Golianek on 25/01/2020.
//  Copyright © 2020 Maciej Golianek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let softTime = 4
    let mediumTime = 6
    let hardTime = 9
    
    @IBAction func eggButton(_ sender: UIButton) {
        let hardness = sender.currentTitle
        switch hardness {
        case "Soft":
            print(softTime)
        case "Medium":
            print(mediumTime)
        case "Hard":
            print(hardTime)
        default:
            print("nie wybrałeś jajca")
        }
}
}

