//
//  ViewController.swift
//  Dice
//
//  Created by Mac on 2018-10-11.
//  Copyright © 2018 Sami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    var randomDice1: Int = 0
    var randomDice2: Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!

    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
       super.viewDidLoad()
        updateDiceImages()
    }


    @IBAction func rollButton(_ sender: UIButton) {
        updateDiceImages()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    func updateDiceImages(){
        randomDice1 = Int.random(in: 0 ... 5)
        randomDice2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDice1])
        
        diceImageView2.image = UIImage(named: diceArray[randomDice2])
    }
    
}

