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
    }
    
    private func fetchWeather() {
        
    }

}
