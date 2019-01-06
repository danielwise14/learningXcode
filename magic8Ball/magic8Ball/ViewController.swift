//
//  ViewController.swift
//  magic8Ball
//
//  Created by Daniel Wise on 2018-12-31.
//  Copyright © 2018 WiseDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBallIndex = 0
    @IBOutlet weak var ballImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateBall()
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBall()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateBall()
    }
    
    func updateBall(){
        randomBallIndex = Int.random(in: 0...4)
        ballImage.image = UIImage(named: ballArray[randomBallIndex])
    }
    
}

