//
//  FIfthViewController.swift
//  Lesson07
//
//  Created by William Martin on 1/19/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {

    @IBOutlet weak var fifthVCTextField: UITextView!
    
    var textSplitAsArray: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let fourthVC = segue.destinationViewController as! SixthViewController
        self.textSplitAsArray = self.fifthVCTextField.text.characters.split(" ").map(String.init)
        fourthVC.textSplitAsArray = self.textSplitAsArray
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
