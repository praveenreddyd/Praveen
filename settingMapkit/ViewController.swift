//
//  ViewController.swift
//  settingMapkit
//
//  Created by Sridevi Voleti on 19/05/17.
//  Copyright © 2017 Sridevi Voleti. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController
{

    @IBOutlet weak var mapview: MKMapView!
   
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let distanceSpan : CLLocationDegrees = 800
        
        let MAQ: CLLocationCoordinate2D = CLLocationCoordinate2DMake(17.446948, 78.368841)
        mapview.setRegion(MKCoordinateRegionMakeWithDistance(MAQ, distanceSpan, distanceSpan), animated: true)
        let pinClass1 = PinAnnotatins(title: "MAQ SoftWares", subtitle: "Office", coordinate: MAQ)
        mapview.addAnnotation(pinClass1)
        
        
        let Capgemini: CLLocationCoordinate2D = CLLocationCoordinate2DMake(17.447235, 78.369581)
        mapview.setRegion(MKCoordinateRegionMakeWithDistance(Capgemini, distanceSpan, distanceSpan), animated: true)
        let pinClass2 = PinAnnotatins(title: "Capgemini India Pvt Ltd", subtitle: "Office", coordinate: Capgemini)
        mapview.addAnnotation(pinClass2)
        
        let TechWaveLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(17.448617, 78.370972)
        mapview.setRegion(MKCoordinateRegionMakeWithDistance(TechWaveLocation, distanceSpan, distanceSpan),animated:true)
        let pinClass3 = PinAnnotatins(title: "Tech Wave", subtitle: "Office", coordinate: TechWaveLocation)
        mapview.addAnnotation(pinClass3)
       
    }
    @IBAction func standard(_ sender: AnyObject) {
        mapview.mapType = MKMapType.standard
    }
    @IBAction func satellite(_ sender: AnyObject) {
        mapview.mapType = MKMapType.satellite
    }



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

