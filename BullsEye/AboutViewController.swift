//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Rahul Lohra on 18/11/17.
//  Copyright © 2017 Rahul Lohra. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    @IBOutlet weak var gameDetail: UITextView!
    
    @IBAction func close(){
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        gameDetail.text = "*** Bull's Eye *** \n\nWelcome to the awesome game of Bull'e Eye where you can win points and fame by dragging a slider. \n\nYour goal is to place the slider as close as possible to the target value. The closer you are the more points you get. Enjoy!"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
