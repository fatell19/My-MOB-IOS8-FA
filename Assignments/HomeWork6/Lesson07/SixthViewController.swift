//
//  SixthViewController.swift
//  Lesson07
//
//  Created by William Martin on 1/19/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class SixthViewController: UIViewController {

    @IBOutlet weak var sixthVCTextField: UITextView!
    
    var textSplitAsArray: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sixthVCTextField.text = self.textSplitAsArray.joinWithSeparator(" ")

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
