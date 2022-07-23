//
//  ViewController.swift
//  Funios Storyboard
//
//  Created by Ferry Adi Wijayanto on 22/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var someImageView: UIImageView!
    @IBOutlet weak var someLabel: UILabel!
    @IBOutlet weak var someImageView2: UIImageView!
    @IBOutlet weak var someLabel2: UILabel!
    @IBOutlet weak var someImageView3: UIImageView!
    @IBOutlet weak var someLabel3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(someLabel)
        someLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            someLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            someLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 60),
            someLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -60),
            someLabel.heightAnchor.constraint(equalToConstant: 200)
        ])
    }

    @IBAction func unwind(_ segue: UIStoryboardSegue) {}

    @IBAction func someButton(_ sender: UIButton) {
        
    }
}

