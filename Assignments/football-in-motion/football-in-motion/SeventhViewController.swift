//
//  SeventhViewController.swift
//  football-in-motion
//
//  Created by Francisco Arellanos on 4/12/16.
//  Copyright © 2016 Francisco Arellanos. All rights reserved.
//

import UIKit

class SeventhViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.updateWebViewWithUrl("http://www.nfl.com")
        
        

        // Do any additional setup after loading the view.
    }
    
    func updateWebViewWithUrl (newUrl: String) {
        var urlToUpdate = newUrl
        if !urlToUpdate.hasPrefix("http://") {
            urlToUpdate = "http://\(urlToUpdate)"
        }
        
        let url = NSURL(string: urlToUpdate)
        let request = NSURLRequest(URL: url!)
        
        self.webView.delegate = self
        
        self.webView.loadRequest(request)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
