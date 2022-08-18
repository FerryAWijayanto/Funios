//
//  NetworkManager.swift
//  URLSessions
//
//  Created by Ferry Adi Wijayanto on 13/08/22.
//

import Foundation
import UIKit
import RxSwift

enum WeatherError: String, Error {
    case InvalidURL
    case InvalidData
    case InvalidResponse
    case FailedToParsedJSON
}

protocol NetworkManagerProtocol {
    func getWeatherData(completion: @escaping (Result<Weather, WeatherError>) -> Void)
    func getWeatherData() async throws -> Weather?
}

class NetworkManager: NetworkManagerProtocol {
    
    let sessions: URLSession
    private let decoder = JSONDecoder()
    private let endpoint = "https://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=581e7774ced1126f79fa2e9ef9c8e309"
    
    init(sessions: URLSession) {
        self.sessions = sessions
    }
    
    func getWeatherData(completion: @escaping (Result<Weather, WeatherError>) -> Void) {
//        let endpoint = "https://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=581e7774ced1126f79fa2e9ef9c8e309"
        
//        guard let url = URL(string: endpoint) else { return }
        // https://divemagazine.com/scuba-diving-news/swimming-repsonsibly-with-whales
        
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
        
        let task = sessions.dataTask(with: url) { data, response, error in
            
            if let _ = error {
                completion(.failure(.InvalidData))
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completion(.failure(.InvalidResponse))
                return
            }
            
            guard let data = data else {
                completion(.failure(.InvalidData))
                return
            }
            
            do {
                let weather = try self.decoder.decode(Weather.self, from: data)
                completion(.success(weather))
            } catch {
                completion(.failure(.FailedToParsedJSON))
            }

        }
        
        task.resume()
        
        print(url)
    }
    
    func getWeatherData() async throws -> Weather? {
        guard let url = URL(string: endpoint) else { return nil }
        
        let (data, response) = try await sessions.data(from: url)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw WeatherError.InvalidResponse
        }
        
        do {
            let weather = try decoder.decode(Weather.self, from: data)
            return weather
        } catch {
            throw WeatherError.FailedToParsedJSON
        }
    }
}
