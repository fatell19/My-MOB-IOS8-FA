//
//  ViewController.swift
//  HomeWork4
//
//  Created by Francisco Arellanos on 2/25/16.
//  Copyright © 2016 Francisco Arellanos. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var singleListTable: UITableView!
    
    var listOfItems : [String] = []

    @IBAction func insertItemToList(sender: AnyObject) {
        listOfItems.append(inputText.text!)
        inputText.text = ""
        print(listOfItems)
        singleListTable.reloadData()
        inputText.becomeFirstResponder()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        inputText.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("listItem", forIndexPath: indexPath)
        
        cell.textLabel?.text = listOfItems[indexPath.row]
        
        return cell
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfItems.count
        
    }


}

