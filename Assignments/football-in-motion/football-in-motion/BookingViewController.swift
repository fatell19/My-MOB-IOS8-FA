//
//  BookingViewController.swift
//  football-in-motion
//
//  Created by Francisco Arellanos on 4/12/16.
//  Copyright © 2016 Francisco Arellanos. All rights reserved.
//

import UIKit

class BookingViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var dateChosen: UILabel!
    @IBOutlet weak var request: UIButton!
    @IBOutlet weak var buttonView: UIButton!

    
    
    // date formatter to format "date" property of date picker.
    lazy var dateFormatter: NSDateFormatter = {
        let dateFormatter = NSDateFormatter()
        
        dateFormatter.dateStyle = .MediumStyle
        dateFormatter.timeStyle = .ShortStyle
        
        return dateFormatter
    }()
    
    var session: [String:DetailedSession] = [:]
    var date: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureDatePicker()
        
        self.request.layer.borderWidth = 2.0
        self.request.layer.cornerRadius = 10
        self.request.layer.borderColor = UIColor.yellowColor().CGColor
        self.buttonView.layer.borderWidth = 2.0
        self.buttonView.layer.cornerRadius = 10
        self.buttonView.layer.borderColor = UIColor.yellowColor().CGColor
        
    }
    
    func configureDatePicker() {
        
        //set parameters to date picker. dates available for 3 months in advance.
        let now = NSDate()
        datePicker.minimumDate = now
        
        let currentCalendar = NSCalendar.currentCalendar()
        
        let dateComponents = NSDateComponents()
        dateComponents.month = 3
        
        let threeMonthsFromNow = currentCalendar.dateByAddingComponents(dateComponents, toDate: now, options: [])
        datePicker.maximumDate = threeMonthsFromNow
        
        datePicker.minuteInterval = 15
        
        datePicker.addTarget(self, action: #selector(BookingViewController.updateDatePickerLabel), forControlEvents: .ValueChanged)
        
        updateDatePickerLabel()
    }
    
    func updateDatePickerLabel() {
        dateChosen.text = dateFormatter.stringFromDate(datePicker.date)
    }
    
    @IBAction func userRequestsDate(sender: AnyObject) {
        dateInTable()
        session[date] = DetailedSession(dateOfSession: date, coachOfSession: "Coach Franco", sessionApproval: "(Pending)")
        
        configureDatePicker()
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "goToBookings" {
            let sessionsVC = segue.destinationViewController as! MySessionsViewController
            sessionsVC.session = Array(self.session.values)
        }
    }
    func dateInTable() {
        date = dateChosen.text!
    }

}
