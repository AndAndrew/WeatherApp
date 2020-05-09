//
//  ViewController.swift
//  WeatherApp
//
//  Created by Andrew K on 08.05.2020.
//  Copyright © 2020 Andrew K. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
// api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid={your api key}
    
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var appearentTemperatureLabel: UILabel!
    @IBOutlet weak var refreshButton: UIButton!
    @IBAction func refreshButtonTapped(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

