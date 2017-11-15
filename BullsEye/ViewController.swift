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
    var targetValue:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = lroundf(slider.value)
        startNewRound()
    }
    
    func startNewRound(){
        targetValue = 1+Int(arc4random_uniform(100))
        currentValue = 50
        slider.value = Float(currentValue)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sliderMOved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
    }
    
    @IBAction func showHelloAlert(){
        
        let message = "The value of the slider is: \(currentValue)"+"\n Target value is \(targetValue)"
        
        let alert = UIAlertController(title: "Hello world", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        startNewRound()
    }
    
    


}

