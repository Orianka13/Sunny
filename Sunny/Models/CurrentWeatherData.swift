//
//  CurrentWeatherData.swift
//  Sunny
//
//  Created by Олеся Егорова on 28.05.2021.
//  Copyright © 2021 Ivan Akulov. All rights reserved.
//

import Foundation

struct CurrentWeatherData: Decodable {
    
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Decodable {
    let temp: Double
    let feelsLike: Double
    
    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
    }
}

struct Weather: Decodable {
    let id: Int
}
