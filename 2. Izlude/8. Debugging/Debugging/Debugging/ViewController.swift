//
//  ViewController.swift
//  Debugging
//
//  Created by Ferry Adi Wijayanto on 06/08/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        print("Method \(#function) file: \(#file) line: \(#line)")
        
        badMethod()
    }
    
    private func badMethod() {
        let array = NSMutableArray()
        
        for i in 0..<3 {
            array.insert(i, at: i)
        }
        
        array.removeObject(at: 0)
    }
}

