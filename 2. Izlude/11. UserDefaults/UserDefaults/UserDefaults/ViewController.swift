//
//  ViewController.swift
//  UserDefaults
//
//  Created by Ferry Adi Wijayanto on 13/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var titleLabel: UILabel!
    
    let defaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func saveBtn(_ sender: UIButton) {
        defaults.set(textField.text, forKey: "textFieldKey")
    }
    
    @IBAction func showBtn(_ sender: UIButton) {
        titleLabel.text = defaults.string(forKey: "textFieldKey")
    }
}

