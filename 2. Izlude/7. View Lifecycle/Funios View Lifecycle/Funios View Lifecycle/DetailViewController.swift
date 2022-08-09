//
//  DetailViewController.swift
//  Funios View Lifecycle
//
//  Created by Ferry Adi Wijayanto on 06/08/22.
//

import UIKit

class DetailViewController: UIViewController {
    
    override func loadView() {
        super.loadView()
        print("DetailViewController loadView")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        
        print("DetailViewController viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("DetailViewController viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("DetailViewController viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("DetailViewController viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        print("DetailViewController viewDidDisappear")
    }
}
