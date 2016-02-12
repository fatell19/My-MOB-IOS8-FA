//
//  SecondViewController.swift
//  HomeWork2
//
//  Created by Francisco Arellanos on 2/11/16.
//  Copyright © 2016 Francisco Arellanos. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var enterNumberText: UITextField!
    @IBOutlet weak var displaySumLabel: UILabel!
    
    var total = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addTotalButtom(sender: AnyObject) {
        let newNumToAdd:Int? = Int(enterNumberText.text!)
        total = total + newNumToAdd!
        displaySumLabel.text = "\(total)"
        enterNumberText.text = ""
    }
    


}
