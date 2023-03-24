//
//  NewEmojiTableViewController.swift
//  EmojiReader
//
//  Created by Ivan Maslov on 24.03.2023.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {

    @IBOutlet weak var emojiTF: UITextField!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var descriptionTF: UITextField!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateSaveButtonState()
    }

    private func updateSaveButtonState() {
        let emojiText = emojiTF.text ?? ""
        let nameText = nameTF.text ?? ""
        let descriptionText = descriptionTF.text ?? ""
        
        saveButton.isEnabled = !emojiText.isEmpty && !nameText.isEmpty && !descriptionText.isEmpty
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        updateSaveButtonState()
    }
    

}
