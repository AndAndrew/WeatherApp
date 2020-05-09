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
    
    case scatteredCloudsDay = "03d"
    case scatteredCloudsNight = "03n"
    
    case brokenCloudsDay = "04d"
    case brokenCloudsNight = "04n"
    
    case showerRainDay = "09d"
    case showerRainNight = "09n"
    
    case rainDay = "10d"
    case rainNight = "10n"
    
    case thunderstormDay = "11d"
    case thunderstormNight = "11n"
    
    case snowDay = "13d"
    case snowNight = "13n"
    
    case mistDay = "50d"
    case mistNight = "50n"
    
    case unpredictedIcon = "unpredicted icon"
    
    init(rawValue: String) {
        switch rawValue {
        case "01d": self = .clearDay
        case "01n": self = .clearNight
        case "02d": self = .fewCloudsDay
        case "02n": self = .fewCloudsNight
        case "03d": self = .scatteredCloudsDay
        case "03n": self = .scatteredCloudsNight
        case "04d": self = .clearDay
        case "04n": self = .clearNight
        case "09d": self = .clearDay
        case "09n": self = .clearNight
        case "10d": self = .clearDay
        case "10n": self = .clearNight
        case "11d": self = .clearDay
        case "11n": self = .clearNight
            
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
