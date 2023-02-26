//
//  ViewController.swift
//  WeatherApp
//
//  Created by Ivan Maslov on 30.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var appearentTemteratureLabel: UILabel!
    @IBOutlet weak var refreshButton: UIButton!
    
    
    @IBAction func refreshButtonTapped(_ sender: UIButton) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let icon = WeatherIconManager.Rain.icon
        let currentWeather = CurrentWeather(temperature: 21, appearentTemperature: 17, humidity: 60, pressure: 750, icon: icon)
        
        updateUIWith(currentWeather: currentWeather)
        
//        let urlString = "https://api.openweathermap.org/data/2.5/weather?lat=39.5437014&lon=-79.0050273&appid=78fdc0669a68dc06a53dd3c157aded21"
//        let baseURL = URL(string: "https://api.openweathermap.org/data/2.5/weather?")
//        let fullURL = URL(string: "lat=39.5437014&lon=-79.0050273&appid=78fdc0669a68dc06a53dd3c157aded21", relativeTo: baseURL)
//
//        let sessionConfiguration = URLSessionConfiguration.default
//        let session = URLSession(configuration: sessionConfiguration)
//
//        let request = URLRequest(url: fullURL!)
//        let dataTask = session.dataTask(with: fullURL!) { data, response, error in
//            <#code#>
//        }
//
//        dataTask.resume()
        
        
    }

    func updateUIWith(currentWeather: CurrentWeather) {
        
        self.imageView.image = currentWeather.icon
        self.pressureLabel.text = currentWeather.temperatureString
        self.humidityLabel.text = currentWeather.humidityString
        self.temperatureLabel.text = currentWeather.temperatureString
        self.appearentTemteratureLabel.text = currentWeather.appearentTemperatureString
        
    }
}









