//
//  PinAnnotatins.swift
//  settingMapkit
//
//  Created by Sridevi Voleti on 19/05/17.
//  Copyright © 2017 Sridevi Voleti. All rights reserved.
//

import Foundation
import MapKit

class PinAnnotatins: NSObject,MKAnnotation {
    var title: String?
    var subtitle: String?
    var coordinate: CLLocationCoordinate2D
    
    init(title:String, subtitle:String, coordinate:CLLocationCoordinate2D) {
        
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate

    }
}
