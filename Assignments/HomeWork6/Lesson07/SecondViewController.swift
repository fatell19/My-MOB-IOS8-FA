//
//  SecondViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondVCTextField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let test_string: String = NSUserDefaults.standardUserDefaults().stringForKey("settings_name")!
        
        let test_number: Double = NSUserDefaults.standardUserDefaults().doubleForKey("settings_slider")
        self.secondVCTextField.text = "\(test_string) \(test_number)"
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
