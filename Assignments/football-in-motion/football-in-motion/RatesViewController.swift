//
//  RatesViewController.swift
//  football-in-motion
//
//  Created by Francisco Arellanos on 4/17/16.
//  Copyright © 2016 Francisco Arellanos. All rights reserved.
//

import UIKit

class RatesViewController: UIViewController {

    @IBOutlet weak var bookGroup: UIButton!
    @IBOutlet weak var bookIndividual: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.bookGroup.layer.borderWidth = 2.0
        self.bookGroup.layer.cornerRadius = 10
        self.bookGroup.layer.borderColor = UIColor.yellowColor().CGColor
        
        self.bookIndividual.layer.borderWidth = 2.0
        self.bookIndividual.layer.cornerRadius = 10
        self.bookIndividual.layer.borderColor = UIColor.yellowColor().CGColor

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
