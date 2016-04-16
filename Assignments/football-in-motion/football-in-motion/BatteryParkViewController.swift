//
//  BatteryParkViewController.swift
//  football-in-motion
//
//  Created by Francisco Arellanos on 4/14/16.
//  Copyright © 2016 Francisco Arellanos. All rights reserved.
//

import UIKit
import MapKit

class BatteryParkViewController: UIViewController, CLLocationManagerDelegate {


    @IBOutlet weak var batteryParkMApView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.batteryParkMApView.mapType = .Standard
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        let pier40coordintes = CLLocationCoordinate2DMake(40.7161066,-74.0162317)
        let title: String = "Battery Park Ball Fields"
        let subtitle: String = "Battery Park Ball Fields"
        
        
        let searchPin = MapAnnotation2(coordinate: pier40coordintes, title: title, subtitle: subtitle)
        
        self.batteryParkMApView.addAnnotation(searchPin)
        let camera = MKMapCamera(lookingAtCenterCoordinate: pier40coordintes, fromDistance: 500, pitch: 45, heading: 45)
        
        self.batteryParkMApView.setCamera(camera, animated: true)
    }
    
    
    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        if status == .AuthorizedWhenInUse {
            //            let gaBldg = CLLocationCoordinate2DMake(40.739527, -73.989680)
            //            let currentLocation = manager.location!.coordinate
            
            //            let camera = MKMapCamera(lookingAtCenterCoordinate: gaBldg, fromDistance: 1000, pitch: 0, heading: 0)
            //
            //            mapView.setCamera(camera, animated: true)
            
            batteryParkMApView.showsUserLocation = true
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

class MapAnnotation2 : NSObject, MKAnnotation {
    let coordinate: CLLocationCoordinate2D
    let title: String?
    let subtitle: String?
    
    init(coordinate: CLLocationCoordinate2D, title: String?, subtitle: String?){
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
    }

}
