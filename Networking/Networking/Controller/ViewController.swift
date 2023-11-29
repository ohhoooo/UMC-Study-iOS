//
//  ViewController.swift
//  Networking
//
//  Created by 김정호 on 11/29/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weatherLabel: UILabel!
    @IBOutlet weak var weatherButton: UIButton!
    
    let weatherManager = WeatherManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        weatherButton.layer.cornerRadius = 7
        weatherButton.clipsToBounds = true
    }

    @IBAction func getWeatherButtonTapped(_ sender: UIButton) {
        weatherManager.getWeather() { (weather) in
            
            guard let wt = weather else { return }
            
            DispatchQueue.main.async {
                self.weatherLabel.text = """
                    \(wt.name)의 날씨:
                    1) 날씨: \(wt.weather[0].description)
                    2) 온도: \(wt.main.temp)
                    3) 체감온도: \(wt.main.feelsLike)
                    4) 최고온도: \(wt.main.tempMax)
                    5) 최저온도: \(wt.main.tempMin)
                    6) 습도: \(wt.main.humidity)
                    7) 기압: \(wt.main.pressure)
                    8) 풍향: \(wt.wind.deg)
                    9) 풍속: \(wt.wind.speed)
                """
            }
        }
    }
}

