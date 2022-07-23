//
//  HomeViewController.swift
//  Funios XIB
//
//  Created by Ferry Adi Wijayanto on 23/07/22.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func someButton(_ sender: UIButton) {
        navigationController?.pushViewController(UIViewController(), animated: true)
    }
    
}
