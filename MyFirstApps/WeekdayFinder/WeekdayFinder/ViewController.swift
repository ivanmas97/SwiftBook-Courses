//
//  ViewController.swift
//  WeekdayFinder
//
//  Created by Ivan Maslov on 21.03.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var monthTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func findWeekDay() {
        
        let calendar = Calendar.current
        
        var dateComponents = DateComponents()
        guard let day = dateTF.text, let month = monthTF.text, let year = yearTF.text else { return }
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
        
        guard let date = calendar.date(from: dateComponents) else { return }
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_En")
        dateFormatter.dateFormat = "EEEE"
        
        let weekDay = dateFormatter.string(from: date)
        let capitalizedWeekDay = weekDay.capitalized
        
        resultLabel.text = capitalizedWeekDay
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }


}

