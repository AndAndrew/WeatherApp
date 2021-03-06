//
//  CurrentWeather.swift
//  WeatherApp
//
//  Created by Andrew K on 09.05.2020.
//  Copyright © 2020 Andrew K. All rights reserved.
//

import UIKit

struct CurrentWeather {
    let temperature: Double
    let apparentTemperature: Double
    let humidity: Double
    let pressure: Double
    let icon: UIImage
}

extension CurrentWeather: JSONDecodable {
    init?(JSON: [String: AnyObject]) {
        guard let temperature = JSON["temp"] as? Double,
            let apparentTemperature = JSON["feels_like"] as? Double,
            let humidity = JSON["humidity"] as? Double,
            let pressure = JSON["pressure"] as? Double,
            let iconString = JSON["icon"] as? String else {
                return nil
        }
        let icon = WeatherIconManager(rawValue: iconString).image
        
        self.temperature = temperature
        self.apparentTemperature = apparentTemperature
        self.humidity = humidity
        self.pressure = pressure
        self.icon = icon
    }
}

extension CurrentWeather {
    var pressureString: String {
        return "\(Int(pressure / 1.333)) mm"
    }
    var humidityString: String {
        return "\(Int(humidity)) %"
    }
    var temperatureString: String {
        return "\(Int(temperature - 273.15))˚C"
    }
    var appearentTemperatureString: String {
        return "Feels like \(Int(apparentTemperature - 273.15))˚C"
    }
}
