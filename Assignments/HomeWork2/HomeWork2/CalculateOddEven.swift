//
//  CalculateOddEven.swift
//  HomeWork2
//
//  Created by Francisco Arellanos on 2/11/16.
//  Copyright © 2016 Francisco Arellanos. All rights reserved.
//

import UIKit

class CalculateOddEven: UIViewController {

    @IBOutlet weak var inputNumber: UITextField!
    @IBOutlet weak var outputField: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func calculate(sender: AnyObject) {
        let numberEntered:Int? = Int(inputNumber.text!)
        if (numberEntered! % 2 == 0) {
            outputField.text = "\(numberEntered!) is even!"
        } else {
            outputField.text = "\(numberEntered!) is odd!"
        }
        inputNumber.text = ""
    }

    

}
