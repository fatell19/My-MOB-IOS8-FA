//
//  FourthViewController.swift
//  Lesson07
//
//  Created by William Martin on 1/19/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var fourthVCTextField: UITextView!
    
    var stringOfTextToPass: String = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let str = stringOfTextToPass
        let filename = getDocumentsDirectory().stringByAppendingPathComponent("output.txt")
        
        do {
            try str.writeToFile(filename, atomically: true, encoding: NSUTF8StringEncoding)
        } catch {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
        
        self.fourthVCTextField.text = str

        // Do any additional setup after loading the view.
    }
    
    
    func getDocumentsDirectory() -> NSString {
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)
        let documentsDirectory = paths[0]
        return documentsDirectory
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
