//
//  BodySurfaceAreaViewController.swift
//  BodySurfaceArea
//
//  Created by Luciano Sclovsky on 11/11/19.
//  Copyright © 2019 Luciano Sclovsky. All rights reserved.
//

import UIKit

class BodySurfaceAreaViewController: UIViewController {

    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var boydLabel: UILabel!
    @IBOutlet weak var duboisLabel: UILabel!
    @IBOutlet weak var haycockLabel: UILabel!
    @IBOutlet weak var mostellerLabel: UILabel!
    
    let calculator = BodySurfaceAreaCalculator()
    let formatter = NumberFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Área de Superfície Corporal"
        heightTextField.addTarget(self, action: #selector(BodySurfaceAreaViewController.textFieldDidChange(_:)), for: UIControl.Event.editingChanged)
        weightTextField.addTarget(self, action: #selector(BodySurfaceAreaViewController.textFieldDidChange(_:)), for: UIControl.Event.editingChanged)
        formatter.numberStyle = .decimal
        formatter.decimalSeparator = Locale.current.decimalSeparator
        calculate()
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        calculate()
    }
    
    func calculate() {
        guard
            let h = heightTextField.text,
            let hh = formatter.number(from: h),
            let w = weightTextField.text,
            let ww = formatter.number(from: w)
        else {
            boydLabel.text = ""
            duboisLabel.text = ""
            haycockLabel.text = ""
            mostellerLabel.text = ""
            return
        }
        let height = Double(truncating: hh)
        let weight = Double(truncating: ww)
        boydLabel.text = format(calculator.boyd(height: height, weight: weight))
        duboisLabel.text = format(calculator.dubois(height: height, weight: weight))
        haycockLabel.text = format(calculator.haycock(height: height, weight: weight))
        mostellerLabel.text = format(calculator.mosteller(height: height, weight: weight))
    }
    
    func format(_ d: Double) -> String {
        return String(format: "%.2f", locale: Locale.current, arguments: [d]) + " m2"
    }

}
