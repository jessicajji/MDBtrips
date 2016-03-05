//
//  MapViewController.swift
//  ThingsToDo
//
//  Created by Mansi Shah on 3/3/16.
//  Copyright © 2016 Mansi Shah. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var MapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        MapView.mapType = .Standard
        var span = MKCoordinateSpanMake(0.05, 0.05)
        var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.872299, longitude: -122.257802), span: span)
        MapView.setRegion(region, animated: true)
        
        let annotation0 = MKPointAnnotation()
        annotation0.coordinate = CLLocationCoordinate2D(
            latitude: 37.872299,
            longitude: -122.257802)
        annotation0.title = "Campanile"
        MapView.addAnnotation(annotation0)
        
        let annotation3 = MKPointAnnotation()
        annotation3.coordinate = CLLocationCoordinate2D(
            latitude: 37.8946,
            longitude: -122.2416)
        annotation3.title = "Tilden Park"
        MapView.addAnnotation(annotation3)
        
        let annotation4 = MKPointAnnotation()
        annotation4.coordinate = CLLocationCoordinate2D(
            latitude: 37.8677,
            longitude: -122.3125)
        annotation4.title = "Berkeley Marina"
        MapView.addAnnotation(annotation4)
        
        let annotation6 = MKPointAnnotation()
        annotation6.coordinate = CLLocationCoordinate2D(
            latitude: 37.8794,
            longitude: -122.2467)
        annotation6.title = "Lawrence Hall of Science"
        MapView.addAnnotation(annotation6)

        
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
