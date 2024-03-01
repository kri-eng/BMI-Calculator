//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Krish Patel on 2/17/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    //
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advise: "Eat More Pies!", color: UIColor.systemBlue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advise: "Fit as a fiddle!", color: UIColor.systemGreen)
        } else {
            bmi = BMI(value: bmiValue, advise: "Eat less Pies!", color: UIColor.systemPink)
        }
    }
    
    //
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    //
    func getAdvise() -> String {
        return bmi?.advise ?? "____"
    }
    
    //
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
}
