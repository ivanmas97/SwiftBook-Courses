//
//  ViewController.swift
//  PassDataProject
//
//  Created by Ivan Maslov on 23.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passordTF: UITextField!
    @IBOutlet weak var button: UIButton! {
        didSet {
            button.layer.cornerRadius = 5
        }
    }
    @IBOutlet weak var returnLabel: UILabel!
    
    @IBAction func sendData(_ sender: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }

    @IBAction func unwindToMainScreen(segue: UIStoryboardSegue) {
        guard segue.identifier == "unwindSegue" else { return }
        guard let svc = segue.source as? SecondViewController else { return }
        self.returnLabel.text = svc.label.text
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController else { return }
        
        dvc.login = loginTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

