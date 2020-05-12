//
//  WeatherIconManager.swift
//  WeatherApp
//
//  Created by Andrew K on 09.05.2020.
//  Copyright © 2020 Andrew K. All rights reserved.
//

import UIKit

enum WeatherIconManager: String {
    case clearDay = "01d"
    case clearNight = "01n"
    
    case fewCloudsDay = "02d"
    case fewCloudsNight = "02n"
    
    case scatteredClouds = "03d"
//    case scatteredCloudsNight = "03d"
    
    case brokenClouds = "04d"
//    case brokenCloudsNight = "04d"
    
    case showerRain = "09d"
//    case showerRainNight = "09d"
    
    case rainDay = "10d"
    case rainNight = "10n"
    
    case thunderstorm = "11d"
//    case thunderstormNight = "11d"
    
    case snow = "13d"
//    case snowNight = "13d"
    
    case mist = "50d"
//    case mistNight = "50d"
    
    case unpredictedIcon = "unpredicted icon"
    
    init(rawValue: String) {
        switch rawValue {
        case "01d": self = .clearDay
        case "01n": self = .clearNight
        case "02d": self = .fewCloudsDay
        case "02n": self = .fewCloudsNight
        case "03d": self = .scatteredClouds
        case "03n": self = .scatteredClouds
        case "04d": self = .brokenClouds
        case "04n": self = .brokenClouds
        case "09d": self = .showerRain
        case "09n": self = .showerRain
        case "10d": self = .rainDay
        case "10n": self = .rainNight
        case "11d": self = .thunderstorm
        case "11n": self = .thunderstorm
        case "13d": self = .snow
        case "13n": self = .snow
        case "50d": self = .mist
        case "50n": self = .mist
            
        default:
            self = .unpredictedIcon
        }
    }
}

extension WeatherIconManager {
    var image: UIImage {
        return UIImage(named: self.rawValue)!
    }
}
