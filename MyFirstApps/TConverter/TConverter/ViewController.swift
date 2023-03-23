//
//  ViewController.swift
//  TConverter
//
//  Created by Ivan Maslov on 22.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
            slider.minimumTrackTintColor = .systemRed
            slider.maximumTrackTintColor = .systemBlue
        }
    }
    
    @IBAction func sliderValueChange(_ sender: UISlider) {
        let temperatureCelcius = Int(round(sender.value))
        celsiusLabel.text = "\(temperatureCelcius)ºC"
        
        let fahrenheitTemperature = Int(round((9 * sender.value / 5) + 32))
        fahrenheitLabel.text = "\(fahrenheitTemperature)ºF"
    }
    

}

