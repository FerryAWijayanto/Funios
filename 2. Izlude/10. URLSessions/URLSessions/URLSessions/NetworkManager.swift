//
//  NetworkManager.swift
//  URLSessions
//
//  Created by Ferry Adi Wijayanto on 13/08/22.
//

import Foundation

enum WeatherError: String, Error {
    case InvalidURL
    case InvalidData
    case InvalidResponse
    case FailedToParsedJSON
}

protocol NetworkManagerProtocol {
    func getWeatherData(completion: @escaping (Result<Weather, WeatherError>) -> Void)
}

class NetworkManager: NetworkManagerProtocol {
    
    func getWeatherData(completion: @escaping (Result<Weather, WeatherError>) -> Void) {
        let endpoint = "https://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=581e7774ced1126f79fa2e9ef9c8e309"
        
//        guard let url = URL(string: endpoint) else { return }
        
        var urlComponents = URLComponents()
        urlComponents.scheme = "https"
        urlComponents.host = "api.openweathermap.org"
        urlComponents.path = "/data/2.5/weather"
        urlComponents.queryItems = [
            URLQueryItem(name: "lat", value: "35"),
            URLQueryItem(name: "lon", value: "139"),
            URLQueryItem(name: "appid", value: "581e7774ced1126f79fa2e9ef9c8e309")
        ]
        
        let url = urlComponents.url!
        
        print(url)
    }
}
