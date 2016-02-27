//
//  PairViewController.swift
//  HomeWork4
//
//  Created by Francisco Arellanos on 2/25/16.
//  Copyright © 2016 Francisco Arellanos. All rights reserved.
//

import UIKit

class PairViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var firstInputText: UITextField!
    @IBOutlet weak var secondInputText: UITextField!
    @IBOutlet weak var pairListTable: UITableView!
    
    var listOfItems : [String] = []
    var firstKey : String!
    var secondValue : String!
//    var dict : [String : String] = [:]
    
    @IBAction func secondEntry(sender: UITextField) {
        firstKey = firstInputText.text!
        secondValue = secondInputText.text!
//        var dictKey : [String : String] = [:]
//        dictKey["key"] = "\(firstKey)"
//        var dictValue : [String : String] = [:]
//        dictValue["value"] = "\(secondValue)"
        var dict : [String : String] = [:]
        dict["\(firstKey)"] = "\(secondValue)"
        
        
//        listOfItems.append(inputText.text!)
        self.firstInputText.text = ""
        self.secondInputText.text = ""
//        print(listOfItems)
        listOfItems.append("\(firstKey) - \(secondValue)")
//        listOfItems.append("\(dict)")
//        listOfItems.append((dict.values))
        pairListTable.reloadData()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstInputText.becomeFirstResponder()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("pairListOfItems", forIndexPath: indexPath)
        
        cell.textLabel?.text = listOfItems[indexPath.row]
        
        return cell
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfItems.count
//        return dict.count
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
