//
//  Constants.swift
//  RainyShiny
//
//  Created by Ricardo Herrera Petit on 6/9/17.
//  Copyright © 2017 Ricardo Herrera Petit. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let APIKEY = "f3b9bbac032a00d880d551e7fd40ef44"


typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)-33.87\(LONGITUDE)121.9\(APP_ID)\(APIKEY)"
let FORECAST_URL = "https://openweathermap.org/data/2.5/forecast/daily?lat=-33.87&lon=121.9&cnt=10&appid=f3b9bbac032a00d880d551e7fd40ef44"

