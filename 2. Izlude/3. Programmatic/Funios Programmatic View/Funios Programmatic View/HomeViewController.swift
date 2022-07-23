//
//  HomeViewController.swift
//  Funios Programmatic View
//
//  Created by Ferry Adi Wijayanto on 23/07/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    let someLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Hallo, funios student"
        return lbl
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        
        view.addSubview(someLabel)
        someLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            someLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            someLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

}

extension UILabel {
    static func makeUILabel() -> UILabel {
        let label = UILabel()
        label.text = "Welcome to Izlude sprint 1"
        label.textAlignment = .center
        return label
    }
    
    static var someLabel: UILabel {
        let label = UILabel()
        label.text = "Welcome to Izlude sprint 2"
        label.textAlignment = .center
        return label
    }
}
