//
//  Location.swift
//  RainyShiny
//
//  Created by Ricardo Herrera Petit on 6/15/17.
//  Copyright © 2017 Ricardo Herrera Petit. All rights reserved.
//

import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() { }
    
    var latitude:Double!
    var longitude:Double!
    
    
}
