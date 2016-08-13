//
//  APIConstants.swift
//  WeatherAdventure
//
//  Created by Nikola Majcen on 13/08/16.
//  Copyright © 2016 Nikola Majcen. All rights reserved.
//

import Foundation

class APIConstants {
    
    static var APIKey: String! {
        get {
            return readConfigurationValue("apiKey", file: "API", type: "plist")
        }
    }
    
    static private func readConfigurationValue(key: String ,file: String, type: String) -> String! {
        if let path = NSBundle.mainBundle().pathForResource(file, ofType: type) {
            let dictionary = NSDictionary(contentsOfFile: path)
            return dictionary?.valueForKey(key) as! String
        } else {
            return nil
        }
    }
}