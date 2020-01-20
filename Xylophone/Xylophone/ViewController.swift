//
//  ViewController.swift
//  Xylophone
//
//  Created by Maciej Golianek on 17/01/2020.
//  Copyright © 2020 Maciej Golianek. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func playSound() {
           let url = Bundle.main.url(forResource: "C", withExtension: "wav")
           player = try! AVAudioPlayer(contentsOf: url!)
           player.play()
                   
       }
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound()
    }
    
   
}


