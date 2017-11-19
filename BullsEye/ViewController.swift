//
//  ViewController.swift
//  BullsEye
//
//  Created by Rahul Lohra on 14/11/17.
//  Copyright © 2017 Rahul Lohra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue:Int = 50
    @IBOutlet weak var slider:UISlider!
    @IBOutlet weak var targetLabel:UILabel!
    @IBOutlet weak var scoreLabel:UILabel!
    @IBOutlet weak var roundLabel:UILabel!
    @IBOutlet weak var startOverBtn:UIButton!
    var targetValue = 0
    var score = 0
    var currentRound = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = lroundf(slider.value)
        performStartOver()
        
        //set image to slider
//        let thumbImageNormal = UIImage(named:"SliderThumb-Normal")
        let thumbImageNormal = #imageLiteral(resourceName: "SliderThumb-Normal")
        slider.setThumbImage(thumbImageNormal, for: .normal)
        
        let thumbImageHighlighted = #imageLiteral(resourceName: "SliderThumb-Highlighted")
        slider.setThumbImage(thumbImageHighlighted, for: .highlighted )
        
        let insets = UIEdgeInsets(top:0, left:14,bottom:0,right: 14)

        let trackLeftImage = #imageLiteral(resourceName: "SliderTrackLeft")
        let trackLeftResizeable = trackLeftImage.resizableImage(withCapInsets: insets)
        slider.setMinimumTrackImage(trackLeftResizeable, for: .normal)
        
        let trackRightImage = #imageLiteral(resourceName: "SliderTrackRight")
        let trackRightResizeable = trackRightImage.resizableImage(withCapInsets: insets)
        slider.setMaximumTrackImage(trackRightResizeable, for: .normal)

    }
    
    func updateLabels(){
        slider.value = Float(currentValue)
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(currentRound)

    }
    
    func startNewRound(){
        targetValue = 1+Int(arc4random_uniform(100))
        currentValue = 50
        currentRound += 1
        updateLabels()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sliderMOved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
    }
    
    @IBAction func performStartOver(){
        score = 0
        currentValue = 50
        currentRound = 0
        targetValue = 0
        
        updateLabels()
        startNewRound()
    }
    
    @IBAction func showHelloAlert(){
        
        let difference:Int = abs(targetValue - currentValue)
        var points = 100 - difference
        
        //set title based on score
        
        let title:String
        if(difference == 0){
            title = "Perfect!"
            points += 100
        }else if difference < 5{
            title = "You almost had it!"
            
            if difference == 1{
                points += 50
            }
        }else if difference < 10{
            title = "Pretty good!"
        }else {
            title = "Not even close..."
        }
        
        score += points
 
        
//        let message = "The value of the slider is: \(currentValue)"+"\n Target value is \(targetValue)"+"\n The difference is \(difference)"
       
        let message = "You scored \(points)"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: {
            action in
            self.startNewRound()
        })
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
     
    }
    
    
    
    
}

