//
//  ViewController.swift
//  HomeWork1 FA
//
//  Created by Francisco Arellanos on 2/4/16.
//  Copyright © 2016 Francisco Arellanos. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var greenViewControler: UIView!
    @IBAction func changeColor(sender: AnyObject) {
        greenViewControler.backgroundColor = UIColor.yellowColor()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

