//
//  CustomLabel.swift
//  ProgramaticCalculatorLayout
//
//  Created by Dayo Jiboye on 28/02/2022.
//

import UIKit

struct CustomLabel {
    let hexStringColor = HexStringColor()
    
    func renderLabel(text: String, font: CGFloat, color: UIColor, alignment: NSTextAlignment, weight: String, backgroundColor: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = weight == "light" ? .systemFont(ofSize: font) : .boldSystemFont(ofSize: font)
        label.textColor = color
        label.textAlignment = alignment
        label.backgroundColor = hexStringColor.hexStringToUIColor(hex: backgroundColor)
        return label
    }
}
