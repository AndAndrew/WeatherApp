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
    let appearentTemperature: Double
    let humidity: Double
    let pressure: Double
    let icon: UIImage
}

extension CurrentWeather {
    var pressureString: String {
        return "\(Int(pressure)) mm"
    }
    var humidityString: String {
        return "\(Int(humidity)) %"
    }
    var temperatureString: String {
        return "\(Int(appearentTemperature))˚C"
    }
    var appearentTemperatureString: String {
        return "\(Int(appearentTemperature))˚C"
    }
}
