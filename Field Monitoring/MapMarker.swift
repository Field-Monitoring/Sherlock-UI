//
//  MapMarker.swift
//  Field Monitoring
//
//  Created by R.M.K. Engineering College on 08/07/17.
//  Copyright © 2017 R.M.K. Engineering College. All rights reserved.
//

import Foundation

import UIKit
import GoogleMaps

class MapMarker: UIViewController {
    
    override func loadView() {
        
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude:13.3571264 , longitude: 80.14286040000002, zoom: 8.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 12.35, longitude: 80.142)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.map = mapView
        
        let marker2 = GMSMarker()
        marker2.position = CLLocationCoordinate2D(latitude: 13.3571264, longitude : 80.14286040000002)
        marker2.title = "RMK"
        marker2.snippet = "Chennai"
        marker2.map = mapView
        
        
    }
    
}

