//
//  MySessionsViewController.swift
//  football-in-motion
//
//  Created by Francisco Arellanos on 4/12/16.
//  Copyright © 2016 Francisco Arellanos. All rights reserved.
//

import UIKit

class MySessionsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var sessionBar: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        //        loadHistory()
        tableView.reloadData()
    }
    
    var session: [DetailedSession] = []
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("bookings", forIndexPath: indexPath)
        
        cell.textLabel?.text = session[indexPath.row].neatDisplay()
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return session.count
    }
    
    /*    func getUrlForDocument(documentName: String) -> NSURL{
     let fileMgr = NSFileManager.defaultManager()
     let urls = fileMgr.URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)
     let directory = urls.first!
     
     return directory.URLByAppendingPathComponent(documentName, isDirectory: false)
     }
     
     func saveHistory() {
     let arrayToSave = session as NSArray
     arrayToSave.writeToURL(getUrlForDocument("session.plist"), atomically: true)
     }
     
     func loadHistory() {
     let arrayToRead = NSArray(contentsOfURL: getUrlForDocument("session.plist"))
     
     self.session = arrayToRead as! [DetailedSession]
     
     tableView.reloadData()
     }
     
     func showNewArray() {
     saveHistory()
     loadHistory()
     }
     */

}
