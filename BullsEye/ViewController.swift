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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sliderMOved(_ sender: UISlider) {
    }
    
    
    @IBAction func showHelloAlert(){
        
        let message = "The value of the slider is: \(currentValue)"
        
        let alert = UIAlertController(title: "Hello world", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    


}

