//
//  HomeViewController.swift
//  Funios XIB
//
//  Created by Ferry Adi Wijayanto on 23/07/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    let viewControllerClassName = "HomeViewController"
    let array = ["A", "B", "C"]

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func someButton(_ sender: UIButton) {
        navigationController?.pushViewController(UIViewController(), animated: true)
    }
    
}
