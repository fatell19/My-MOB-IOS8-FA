//
//  ControlPanelViewController.swift
//  football-in-motion
//
//  Created by Francisco Arellanos on 4/12/16.
//  Copyright © 2016 Francisco Arellanos. All rights reserved.
//

import UIKit

class ControlPanelViewController: UIViewController {

    @IBOutlet weak var myProfile: UIButton!
    @IBOutlet weak var addSession: UIButton!
    @IBOutlet weak var viewSessions: UIButton!
    @IBOutlet weak var performance: UIButton!
    @IBOutlet weak var tools: UIButton!
    @IBOutlet weak var tips: UIButton!
    @IBOutlet weak var home: UIButton!
    @IBOutlet weak var web: UIButton!
    @IBOutlet weak var logout: UIButton!
    @IBOutlet weak var logLabel: UILabel!
    @IBOutlet weak var logStatus: UILabel!
    
    var status = 1
    var image1 = UIImage(named: "in.png")
    var image2 = UIImage(named: "logout.jpg")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.addSession.layer.borderWidth = 5.0
        self.addSession.layer.cornerRadius = 10
        self.addSession.layer.borderColor = UIColor.greenColor().CGColor
        
        self.logout.layer.borderWidth = 5.0
        self.logout.layer.cornerRadius = 10
        self.logout.layer.borderColor = UIColor.redColor().CGColor
        
        self.home.layer.borderWidth = 5.0
        self.home.layer.cornerRadius = 10
        self.home.layer.borderColor = UIColor.blueColor().CGColor
        
        self.web.layer.borderWidth = 2.0
        self.web.layer.cornerRadius = 10
        self.web.layer.borderColor = UIColor.blueColor().CGColor
        
        self.logLabel.text = "Log In"
        self.logStatus.text = "You Are Logged Off"
        self.logout.setImage(image1, forState: .Normal)
        self.logout.backgroundImageForState(.Normal)

        // Do any additional setup after loading the view.
    }

    @IBAction func logInAndOut(sender: AnyObject) {
        self.status = status + 1
        if status % 2 == 0 {
            self.logLabel.text = "Log Out"
            self.logStatus.text = "You Are Logged In"
            self.logout.setImage(image2, forState: .Normal)
            self.logout.backgroundImageForState(.Normal)
        } else {
            self.logLabel.text = "Log In"
            self.logStatus.text = "You Are Logged Out"
            self.logout.setImage(image1, forState: .Normal)
            self.logout.backgroundImageForState(.Normal)
        }
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
