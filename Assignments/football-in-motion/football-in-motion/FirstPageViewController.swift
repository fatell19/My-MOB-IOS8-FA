//
//  FirstPageViewController.swift
//  football-in-motion
//
//  Created by Francisco Arellanos on 4/7/16.
//  Copyright © 2016 Francisco Arellanos. All rights reserved.
//

import UIKit

class FirstPageViewController: UIViewController {

    @IBOutlet weak var positionalSkills: UIButton!
    @IBOutlet weak var tryoutsCombines: UIButton!
    @IBOutlet weak var specialTeams: UIButton!

    @IBOutlet weak var bookNow1: UIButton!
    @IBOutlet weak var bookNow2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.positionalSkills.layer.borderWidth = 2.0
        self.positionalSkills.layer.cornerRadius = 5
        self.positionalSkills.layer.borderColor = UIColor.yellowColor().CGColor
        
        self.tryoutsCombines.layer.borderWidth = 2.0
        self.tryoutsCombines.layer.cornerRadius = 5
        self.tryoutsCombines.layer.borderColor = UIColor.yellowColor().CGColor
        
        self.specialTeams.layer.borderWidth = 2.0
        self.specialTeams.layer.cornerRadius = 5
        self.specialTeams.layer.borderColor = UIColor.yellowColor().CGColor
        
        self.bookNow1.layer.borderWidth = 2.0
        self.bookNow1.layer.cornerRadius = 10
        self.bookNow1.layer.borderColor = UIColor.whiteColor().CGColor
        
        self.bookNow2.layer.borderWidth = 2.0
        self.bookNow2.layer.cornerRadius = 10
        self.bookNow2.layer.borderColor = UIColor.whiteColor().CGColor

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
