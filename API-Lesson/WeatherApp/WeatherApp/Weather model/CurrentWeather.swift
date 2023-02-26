//
//  CurrentWeather.swift
//  WeatherApp
//
//  Created by Ivan Maslov on 30.01.2023.
//

import Foundation
import UIKit


struct CurrentWeather {
    let temperature: Double
    let appearentTemperature: Double
    let humidity: Double
    let pressure: Double
    let icon: UIImage
}

extension CurrentWeather {
    var pressureString: String {
        return "\(Int(pressure))mm"
    }
    var humidityString: String {
        return "\(Int(humidity))%"
    }
    var temperatureString: String {
        return "\(Int(temperature))˚C"
    }
    var appearentTemperatureString: String {
        return "Feels like: \(Int(appearentTemperature))˚C"
    }
}
