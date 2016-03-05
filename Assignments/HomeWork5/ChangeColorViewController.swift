//
//  ViewController.swift
//  HomeWork5
//
//  Created by Francisco Arellanos on 3/3/16.
//  Copyright © 2016 Francisco Arellanos. All rights reserved.
//

import UIKit

class ChangeColorViewController: UIViewController {

    @IBOutlet weak var colorButton: UIButton!
    var clicked = 1
    @IBAction func changeColorButton(sender: AnyObject) {
        clicked = clicked + 1
        if clicked % 2 == 0 {
            colorButton.backgroundColor = UIColor.redColor()
        } else {
            colorButton.backgroundColor = UIColor.greenColor()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorButton.layer.borderColor = UIColor.redColor().CGColor
        colorButton.layer.borderWidth = 1
        colorButton.backgroundColor = UIColor.greenColor()

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
