//
//  DetailViewController.swift
//  Funios CollectionView
//
//  Created by Ferry Adi Wijayanto on 06/08/22.
//

import UIKit

class DetailViewController: UIViewController {
    
    let navigationTitle: String
    
    init(title: String) {
        navigationTitle = title
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = navigationTitle
        view.backgroundColor = .systemBackground
    }

}
