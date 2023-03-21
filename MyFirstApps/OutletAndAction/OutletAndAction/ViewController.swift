//
//  ViewController.swift
//  OutletAndAction
//
//  Created by Ivan Maslov on 21.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBAction func changeTextInLabel(_ sender: UIButton) {
        label.text = "Hello, world!"
    }


    @IBAction func sayInConsole(_ sender: UIButton) {
        print("Hello, World! in the console!")
    }
}

