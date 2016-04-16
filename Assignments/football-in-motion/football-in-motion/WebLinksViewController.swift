//
//  WebLinksViewController.swift
//  football-in-motion
//
//  Created by Francisco Arellanos on 4/14/16.
//  Copyright © 2016 Francisco Arellanos. All rights reserved.
//

import UIKit

class WebLinksViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var favouritesBar: UISegmentedControl!
    
    var history : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let previousUrl = NSUserDefaults.standardUserDefaults().stringForKey("previous_url")
        
        let loadPreviousPage = NSUserDefaults.standardUserDefaults().boolForKey("load_previous")
        
        if loadPreviousPage && previousUrl != nil && !previousUrl!.isEmpty {
            updateWebViewWithURL(previousUrl!)
        } else {
            updateWebViewWithURL("http://www.nfl.com")
        }
        
        activityIndicator.hidesWhenStopped = true
    }
    
    func updateWebViewWithURL(newURL: String){
        var urlToUpdate = newURL
        if !urlToUpdate.hasPrefix("http://"){
            urlToUpdate = "http://\(urlToUpdate)"
        }
        
        let url = NSURL(string: urlToUpdate)
        let request = NSURLRequest(URL: url!)
        
        webView.delegate = self
        
        webView.loadRequest(request)
        
        history.append(urlToUpdate)
        NSUserDefaults.standardUserDefaults().setValue(urlToUpdate, forKey: "previous_url")
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = true
        activityIndicator.startAnimating()
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = false
        activityIndicator.stopAnimating()
    }
    
    @IBAction func favoriteBarClicked(sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:updateWebViewWithURL("nfl.com")
        case 1:updateWebViewWithURL("ncaa.com/sports/football")
        case 2:updateWebViewWithURL("hudl.com/highlights/Football")
        case 3:updateWebViewWithURL("usafootball.com/")
        case 4:
            sender.selectedSegmentIndex = -1
            performSegueWithIdentifier("history", sender: nil)
            
            
            
        default: break
        }
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let historyVC = segue.destinationViewController as! WebHistortViewController
        
        historyVC.history = self.history
    }

}
