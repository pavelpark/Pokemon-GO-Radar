//
//  ViewController.swift
//  PokemonGORadar
//
//  Created by Pavel Parkhomey on 6/14/17.
//  Copyright © 2017 Pavel Parkhomey. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager  = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self
        
        mapView.userTrackingMode = MKUserTrackingMode.follow
    }
    
    func locationAuthStatus() {
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
            mapView.showsUserLocation = true
        }
    }
    var geoFire: GeoFire!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func spotRandomPokemon(_ sender: Any) {
    }
    
}

