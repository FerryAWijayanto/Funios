//
//  DetailViewController.swift
//  Funios TableView XIB
//
//  Created by Ferry Adi Wijayanto on 24/07/22.
//

import UIKit

class DetailViewController: UIViewController {
    
    let navTitle: String
    
    init(navTitle: String) {
        self.navTitle = navTitle
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = navTitle
        
        view.backgroundColor = .systemBackground
    }


}
