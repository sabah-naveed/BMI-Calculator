//  Sabah Naveed
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?

    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = (weight / pow(height, 2)) * 703.0
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "underweight dictated by BMI value", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        } else if (bmiValue <= 24.9 ) {
            bmi = BMI(value: bmiValue, advice: "normal weight dictated by BMI value", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "overweight dictated by BMI value", color: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.black
    }
    
    func getBMIValue() -> String {
        let bmiToDecPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToDecPlace
    }
}
