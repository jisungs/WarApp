//
//  ViewController.swift
//  WarApp
//
//  Created by The book on 2018. 8. 5..
//  Copyright © 2018년 The book. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var rightScore = 0
    var leftScore = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        //Randomize two numbers
        let leftRandomNumber = arc4random_uniform(13) + 2
        let rightRandomNumber = arc4random_uniform(13) + 2
        
        //Change the image Views
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        //Compare the numbers
        if leftRandomNumber > rightRandomNumber {
            //Update Score
            leftScore += 1
            
            //Update label
            leftScoreLabel.text = String(leftScore)
        }
        else if rightRandomNumber > leftRandomNumber {
            //Update Score
            rightScore += 1
            
            //Update label
            rightScoreLabel.text = String(rightScore)
            
        }
        else if rightRandomNumber == leftRandomNumber {
            
            
        }
        
    }
    

}

