//
//  BookingViewController.swift
//  football-in-motion
//
//  Created by Francisco Arellanos on 4/12/16.
//  Copyright © 2016 Francisco Arellanos. All rights reserved.
//

import UIKit
import MessageUI

class BookingViewController: UIViewController, MFMailComposeViewControllerDelegate {

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
        
        sendEmail()
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
    
    func sendEmail() {
        let mailComposeViewController = configuredMailComposeViewController()
        if MFMailComposeViewController.canSendMail() {
            self.presentViewController(mailComposeViewController, animated: true, completion: nil)
        } else {
            self.showSendMailErrorAlert()
        }
    }
    
    func configuredMailComposeViewController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self // Extremely important to set the --mailComposeDelegate-- property, NOT the --delegate-- property
        mailComposerVC.setToRecipients(["coach_franco.arellanos@yahoo.com "])
        mailComposerVC.setSubject("Booking Confirmation")
        mailComposerVC.setMessageBody("I would like to book a session on \(dateChosen.text). Are you availabe?", isHTML: false)
        
        return mailComposerVC
    }
    
    func showSendMailErrorAlert() {
        let sendMailErrorAlert = UIAlertView(title: "Could Not Send Email", message: "Your device could not send e-mail.  Please check e-mail configuration and try again.", delegate: self, cancelButtonTitle: "OK")
        sendMailErrorAlert.show()
    }
    
    // MARK: MFMailComposeViewControllerDelegate Method
    func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }


}
