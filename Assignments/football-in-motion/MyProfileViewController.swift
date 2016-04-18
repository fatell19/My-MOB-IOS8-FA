//
//  MyProfileViewController.swift
//  football-in-motion
//
//  Created by Francisco Arellanos on 4/17/16.
//  Copyright © 2016 Francisco Arellanos. All rights reserved.
//

import UIKit

class MyProfileViewController: UIViewController {

    @IBOutlet weak var first: UIPickerView!
    @IBOutlet weak var second: UIPickerView!
    @IBOutlet weak var third: UIPickerView!
    
    let pickerData = ["QB","WR","RB","TE","OLM","DB","LB","DLM","K","P"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

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
