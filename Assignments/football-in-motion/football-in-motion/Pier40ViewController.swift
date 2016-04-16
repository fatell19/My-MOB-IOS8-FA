//
//  Pier40ViewController.swift
//  football-in-motion
//
//  Created by Francisco Arellanos on 4/14/16.
//  Copyright © 2016 Francisco Arellanos. All rights reserved.
//

import UIKit
import MapKit

class Pier40ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var pier40MapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pier40MapView.mapType = .Standard
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        let pier40coordintes = CLLocationCoordinate2DMake(40.7291248,-74.0114392)
        let title: String = "Pier 40"
        let subtitle: String = "Pier 40"
        
                    
                    let searchPin = MapAnnotation(coordinate: pier40coordintes, title: title, subtitle: subtitle)
                    
                    self.pier40MapView.addAnnotation(searchPin)
                    let camera = MKMapCamera(lookingAtCenterCoordinate: pier40coordintes, fromDistance: 500, pitch: 45, heading: 45)
                    
                    self.pier40MapView.setCamera(camera, animated: true)
    }
    
    
    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        if status == .AuthorizedWhenInUse {
            //            let gaBldg = CLLocationCoordinate2DMake(40.739527, -73.989680)
            //            let currentLocation = manager.location!.coordinate
            
            //            let camera = MKMapCamera(lookingAtCenterCoordinate: gaBldg, fromDistance: 1000, pitch: 0, heading: 0)
            //
            //            mapView.setCamera(camera, animated: true)
            
            pier40MapView.showsUserLocation = true
        }
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

class MapAnnotation : NSObject, MKAnnotation {
    let coordinate: CLLocationCoordinate2D
    let title: String?
    let subtitle: String?
    
    init(coordinate: CLLocationCoordinate2D, title: String?, subtitle: String?){
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
    }
}
