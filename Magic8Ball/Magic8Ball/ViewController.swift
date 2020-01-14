//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Maciej Golianek on 13/01/2020.
//  Copyright © 2020 Maciej Golianek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerImage: UIImageView!
    
    
    @IBAction func przyciskPytajacy(_ sender: UIButton) {
        let answerOptionImage = [#imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball4"), #imageLiteral(resourceName: "ball5")]
       
        answerImage.image = answerOptionImage[Int.random(in: 0...4)]
    }
    
}
