//
//  CustomLabel.swift
//  ProgramaticCalculatorLayout
//
//  Created by Dayo Jiboye on 28/02/2022.
//

import UIKit

let hexStringColor = HexStringColor()

// use sub class to define component
class CustomLabel: UILabel {
    // mark unnecessary init method as unavailable
    @available(*, unavailable)
    // override init to apply styles and constraints
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.initialize()
    }
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(text: String?, font: CGFloat, color: UIColor, alignment: NSTextAlignment, weight: String, backgroundColor: String) {
        super.init(frame: .zero)
        self.text = text
        self.font = weight == "light" ? .systemFont(ofSize: font) : .boldSystemFont(ofSize: font)
        self.textColor = color
        self.textAlignment = alignment
        self.backgroundColor = hexStringColor.hexStringToUIColor(hex: backgroundColor)
        self.initialize()
    }
    
    func initialize() {
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
