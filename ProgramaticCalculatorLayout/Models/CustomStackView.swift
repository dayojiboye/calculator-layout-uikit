//
//  CustomVStack.swift
//  ProgramaticCalculatorLayout
//
//  Created by Dayo Jiboye on 01/03/2022.
//

import UIKit

class CustomStackView: UIStackView {
    @available(*, unavailable)
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.initialize()
    }
    
    init(axis: String, alignment: UIStackView.Alignment, distribution: UIStackView.Distribution, spacing: CGFloat) {
        super.init(frame: .zero)
        
        self.axis = axis == "vertical" ? NSLayoutConstraint.Axis.vertical : NSLayoutConstraint.Axis.horizontal
        self.alignment = alignment
        self.distribution = distribution
        self.spacing = spacing
       
        self.initialize()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initialize() {
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
