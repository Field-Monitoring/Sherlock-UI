//
//  MapViewController.swift
//  Field Monitoring
//
//  Created by Ajith Panneerselvam on 21/07/17.
//  Copyright © 2017 R.M.K. Engineering College. All rights reserved.
//

import UIKit
import GoogleMaps

class MapViewController: UIViewController {

    var lat = ""
    var long = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func loadView() {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: 13.357126, longitude: 80.14286, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 13.357126, longitude: 80.14286)
        marker.title = "R.M.K Engineering College"
        marker.snippet = "India"
        marker.map = mapView
    }
    
   }
