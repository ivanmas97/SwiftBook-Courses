//
//  WatherIconManager.swift
//  WeatherApp
//
//  Created by Ivan Maslov on 30.01.2023.
//

import Foundation
import UIKit

enum WeatherIconManager: String {
    case ClearDay = "clear-day"
    case ClearNight = "clear-night"
    case Rain = "rain"
    case Snow = "snow"
    case Sleet = "sleet"
    case Wind = "wind"
    case Fog = "fog"
    case Cloudy = "cloudy"
    case PartlyCloudyDay = "partly-cloudy-day"
    case PartlyCloudyNight = "partly-cloudy-night"
    case UnpredictedIcon = "unpredicted-icon"
    
    init?(rawValue: String) {
     
        switch rawValue {
        case "clear-day": self = .ClearDay
        case "clear-night": self = .ClearNight
        case "rain": self = .Rain
        case "snow": self = .Snow
        case "sleet": self = .Sleet
        case "fog": self = .Fog
        case "cloudy": self = .Cloudy
        case "artly-cloudy-day": self = .PartlyCloudyDay
        case "partly-cloudy-night": self = .PartlyCloudyNight
            
        default: self = .UnpredictedIcon
        }
    }
}

extension WeatherIconManager {
    var icon: UIImage {
        return UIImage(named: self.rawValue)!
    }
}
