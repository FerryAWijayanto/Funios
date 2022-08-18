//
//  HomeViewController.swift
//  URLSessions
//
//  Created by Ferry Adi Wijayanto on 13/08/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var conditionLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let manager: NetworkManagerProtocol
    
    init(manager: NetworkManagerProtocol) {
        self.manager = manager
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fetchWeather()
        postRequest()
    }
    
    private func fetchWeather() {
//        manager.getWeatherData { [weak self] results in
//            switch results {
//            case .success(let weather):
//                DispatchQueue.main.async {
//                    self?.nameLabel.text = weather.name
//                    self?.conditionLabel.text = "\(weather.main.temp)"
//                }
//            case .failure(let error):
//                print(error)
//            }
//        }
        
        Task {
            do {
                let weather = try await manager.getWeatherData()
                nameLabel.text = weather?.name
                conditionLabel.text = "\(weather?.main.temp)"
            } catch {
                print(error)
            }
        }
    }
    
    private func postRequest() {
        let urlString = "https://jsonplaceholder.typicode.com/posts"
        
        let userData = ["Bootcamp": "Izlude", "Courses": "Udemy"]
        
        var request = URLRequest(url: URL(string: urlString)!)
        request.httpMethod = "POST"
        
        guard let httpBody = try? JSONEncoder().encode(userData) else { return }
        
        request.httpBody = httpBody
        
        let session = URLSession.shared.dataTask(with: request) { data, response, error in
            
            
            guard let data = data else {
                return
            }

            
            do {
                let json = try JSONSerialization.jsonObject(with: data)
                print(json)
            } catch {
                print(error)
            }
        }
        session.resume()
    }

}
