//
//  Forecast.swift
//  RainyShiny
//
//  Created by Ricardo Herrera Petit on 6/13/17.
//  Copyright © 2017 Ricardo Herrera Petit. All rights reserved.
//

import UIKit
import Alamofire

class Forecast {
    
    var _date : String!
    var _weatherType : String!
    var _highTemp: String!
    var _lowTemp : String!
    
    var date :String {
        
        if _date == nil {
            _date = ""
        }
        return _date
    }
    
    var weatherType:String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var highTemp:String {
        if _highTemp == nil {
            _highTemp = ""
        }
        
        return _highTemp
    }
    
    var lowTemp:String {
        if _lowTemp == nil {
            _lowTemp = ""
        }
        return _lowTemp
    }
    
    init(weatherDict: Dictionary<String,Any>) {
        
        if let temp = weatherDict["temp"] as? Dictionary<String,Any> {
            if let min = temp["min"] as? Double {
                
                let kelvinToFarenheitPreDivision = (min * (9/5) - 459.67)
                
                let kelvinToFarenheit = Double(round(10 * kelvinToFarenheitPreDivision)/10)
                
                self._lowTemp = "\(kelvinToFarenheit)"
                // print(self._currentTemp)
                
                
            }
            
            if let max = temp["max"] as? Double {
                
                let kelvinToFarenheitPreDivision = (max * (9/5) - 459.67)
                
                let kelvinToFarenheit = Double(round(10 * kelvinToFarenheitPreDivision)/10)
                
                self._highTemp = "\(kelvinToFarenheit)"
                
            }
        }
        
        if let weather = weatherDict["weather"] as? [Dictionary<String,Any>] {
            
            if let main = weather[0]["main"] as? String {
                self._weatherType = main
            }
        }
        
    }
    
}

extension Date {
    func dayOfThWeek() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
        
    }
}






