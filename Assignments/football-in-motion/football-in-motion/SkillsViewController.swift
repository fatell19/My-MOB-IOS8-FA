//
//  SkillsViewController.swift
//  football-in-motion
//
//  Created by Francisco Arellanos on 4/17/16.
//  Copyright © 2016 Francisco Arellanos. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController {

    @IBOutlet weak var bookNow: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.bookNow.layer.borderWidth = 2.0
        self.bookNow.layer.cornerRadius = 10
        self.bookNow.layer.borderColor = UIColor.yellowColor().CGColor

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
