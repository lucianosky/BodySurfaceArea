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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Área de Superfície Corporal"
        calculate()
    }
    
    func calculate() {
        guard
            let h = heightTextField.text,
            let height = Double(h),
            let w = weightTextField.text,
            let weight = Double(w)
        else {
            boydLabel.text = ""
            duboisLabel.text = ""
            haycockLabel.text = ""
            mostellerLabel.text = ""
            return
        }
        boydLabel.text = format(calculator.boyd(height: height, weight: weight))
        duboisLabel.text = format(calculator.dubois(height: height, weight: weight))
        haycockLabel.text = format(calculator.haycock(height: height, weight: weight))
        mostellerLabel.text = format(calculator.mosteller(height: height, weight: weight))
    }
    
    func format(_ d: Double) -> String {
        return String(format: "%.2f", arguments: [d]) + " m2"
    }

}
