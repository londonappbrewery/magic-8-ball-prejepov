//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by rejepov on 6/20/19.
//  Copyright © 2019 Parahat Rejepov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5",]
    var randomBallNumber: Int = 0
    
    
    @IBOutlet weak var ballImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        newBallImage()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
         newBallImage()
    }
    
    func newBallImage(){
        
        randomBallNumber = Int.random(in: 0...4)
        ballImage.image = UIImage(named: ballArray[randomBallNumber])
        
    }
    

}

