//
//  WebHistortViewController.swift
//  football-in-motion
//
//  Created by Francisco Arellanos on 4/14/16.
//  Copyright © 2016 Francisco Arellanos. All rights reserved.
//

import UIKit

class WebHistortViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var historyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    var history : [String] = []
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("historyCell", forIndexPath: indexPath)
        
        cell.textLabel?.text = history[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return history.count
    }
    
    func getUrlForDocument(documentName: String) -> NSURL{
        let fileMgr = NSFileManager.defaultManager()
        let urls = fileMgr.URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)
        let directory = urls.first!
        
        return directory.URLByAppendingPathComponent(documentName, isDirectory: false)
    }

    @IBAction func saveHistory(sender: AnyObject) {
        let arrayToSave = history as NSArray
        arrayToSave.writeToURL(getUrlForDocument("history.plist"), atomically: true)
        
        let fileURL = getUrlForDocument("timestamp.txt")
        
        
        let formatter = NSDateFormatter()
        formatter.dateStyle = NSDateFormatterStyle.LongStyle
        formatter.timeStyle = .MediumStyle
        
        let dateString = formatter.stringFromDate(NSDate())
        
        do {
            try dateString.writeToURL(fileURL, atomically: true, encoding: NSUTF8StringEncoding)
        } catch {
            print("someting went wrong")
        }
    }
    
    @IBAction func loadHistory(sender: AnyObject) {
        let arrayToRead = NSArray(contentsOfURL: getUrlForDocument("history.plist"))
        
        self.history = arrayToRead as! [String]
        do {
            let output = try String(contentsOfURL: getUrlForDocument("timestamp.txt"))
            historyLabel.text = output
            print(output)
        } catch {
            print("something went wrong")
        }
        tableView.reloadData()
    }
    
}
