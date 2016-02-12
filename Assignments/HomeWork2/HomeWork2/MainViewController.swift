//
//  ViewController.swift
//  HomeWork2
//
//  Created by Francisco Arellanos on 2/11/16.
//  Copyright © 2016 Francisco Arellanos. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var ageText: UITextField!
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    
    
    
    var age = 0
    var nameString = ""
    
    
    var labelMessageOne:String = "Hello World! please enter name and age"
    var labelMessageTwo:String = ""
    
    
    func changeLabelOne () {
        labelOne.text = labelMessageOne
    }
    func changeLabelTwo () {
        labelTwo.text = labelMessageTwo
    }
    
    func ageLimits () {
        age = Int(ageText.text!)!
        if age < 15 {
            labelMessageTwo = "You can't drive nor drink"
            changeLabelTwo()
        } else if age >= 15 && age < 18 {
            labelMessageTwo = "You can drive but can't drink"
            changeLabelTwo()
        } else if age >= 18 && age < 21 {
            labelMessageTwo = "Can't vote, but can drive & drink, not at the same time"
            changeLabelTwo()
        } else {
            labelMessageTwo = "You can drive, drink & vote. Woohoo!!"
            changeLabelTwo()
        } 
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeLabels(sender: AnyObject) {
        
        labelOne.text = "Placeholder text, replace me!"
        
        if  nameText.text == "" && ageText.text == "" {
            labelMessageOne = "Please enter NAME and AGE!"
            changeLabelOne()
        } else if nameText.text != "" && ageText.text == "" {
            labelMessageOne = "Hello \(nameText.text!), please enter your age"
            changeLabelOne()
        } else if nameText.text == "" && ageText.text != "" {
            labelMessageOne = "You are \(ageText.text!), please enter your NAME"
            changeLabelOne()
        } else {
            labelMessageOne = "Hello \(nameText.text!), you are \(ageText.text!) years old"
            changeLabelOne()
            ageLimits()
        }
    }

}

