//
//  ViewController.swift
//  ProgramaticCalculatorLayout
//
//  Created by Dayo Jiboye on 27/02/2022.
//

import UIKit

class
ViewController: UIViewController {
    let hexStringColor = HexStringColor()

    override func viewDidLoad() {
        super.viewDidLoad()
        let margins = view.safeAreaLayoutGuide
        let orientation = UIDevice.current.orientation // to check current orientation of the device
        
        //  digit label
        let digitLabel = CustomLabel(text: "0", font: 32, color: .white, alignment: .right, weight: "bold", backgroundColor: "#000000")
        
        // digit view
        let digitView = UIView()
        digitView.backgroundColor = .black
        digitView.addSubview(digitLabel)
        
        // main stack view
        let mainStack = CustomStackView(axis: "vertical", alignment: .fill, distribution: .fillEqually, spacing: 1)
        mainStack.frame = view.frame
        
        // first stack view
        let firstStack = CustomStackView(axis: "horizontal", alignment: .fill, distribution: .fillEqually, spacing: 1)
        firstStack.addArrangedSubview(CustomLabel(text: "%", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#000"))
        firstStack.addArrangedSubview(CustomLabel(text: "+/-", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#000"))
        firstStack.addArrangedSubview(CustomLabel(text: "AC", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#000"))
        firstStack.addArrangedSubview(CustomLabel(text: "÷", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#daa520"))
        
        // second stack view
        let secondStack = CustomStackView(axis: "horizontal", alignment: .fill, distribution: .fillEqually, spacing: 1)
        secondStack.addArrangedSubview(CustomLabel(text: "7", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#1C86EE"))
        secondStack.addArrangedSubview(CustomLabel(text: "8", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#1C86EE"))
        secondStack.addArrangedSubview(CustomLabel(text: "9", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#1C86EE"))
        secondStack.addArrangedSubview(CustomLabel(text: "x", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#daa520"))
        
        // third stack view
        let thirdStack = CustomStackView(axis: "horizontal", alignment: .fill, distribution: .fillEqually, spacing: 1)
        thirdStack.addArrangedSubview(CustomLabel(text: "4", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#1C86EE"))
        thirdStack.addArrangedSubview(CustomLabel(text: "5", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#1C86EE"))
        thirdStack.addArrangedSubview(CustomLabel(text: "6", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#1C86EE"))
        thirdStack.addArrangedSubview(CustomLabel(text: "-", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#daa520"))
        
        // fourth stack view
        let fourthStack = CustomStackView(axis: "horizontal", alignment: .fill, distribution: .fillEqually, spacing: 1)
        fourthStack.addArrangedSubview(CustomLabel(text: "1", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#1C86EE"))
        fourthStack.addArrangedSubview(CustomLabel(text: "2", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#1C86EE"))
        fourthStack.addArrangedSubview(CustomLabel(text: "3", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#1C86EE"))
        fourthStack.addArrangedSubview(CustomLabel(text: "+", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#daa520"))
        
        // fifth stack
        let fifthStack = CustomStackView(axis: "horizontal", alignment: .fill, distribution: .fillEqually, spacing: 1)
        fifthStack.addArrangedSubview(CustomLabel(text: ".", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#1C86EE"))
        fifthStack.addArrangedSubview(CustomLabel(text: "=", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#daa520"))
        
        // last stack
        let lastStack = CustomStackView(axis: "horizontal", alignment: .fill, distribution: .fillEqually, spacing: 1)
        lastStack.addArrangedSubview(CustomLabel(text: "0", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#1C86EE"))
        lastStack.addArrangedSubview(fifthStack)
        
        mainStack.addArrangedSubview(firstStack)
        mainStack.addArrangedSubview(secondStack)
        mainStack.addArrangedSubview(thirdStack)
        mainStack.addArrangedSubview(fourthStack)
        mainStack.addArrangedSubview(lastStack)
        
        view.addSubview(mainStack)
        view.addSubview(digitView)
       
        // digit label constraints
        digitLabel.topAnchor.constraint(equalTo: digitView.topAnchor, constant: 0).isActive = true
        digitLabel.bottomAnchor.constraint(equalTo: digitView.bottomAnchor, constant: 0).isActive = true
        digitLabel.leadingAnchor.constraint(equalTo: digitView.layoutMarginsGuide.leadingAnchor).isActive = true
        digitLabel.trailingAnchor.constraint(equalTo: digitView.layoutMarginsGuide.trailingAnchor).isActive = true
        
        // digit view constraints
        digitView.translatesAutoresizingMaskIntoConstraints = false
        digitView.topAnchor.constraint(equalTo: margins.topAnchor, constant: 0).isActive = true
        digitView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        digitView.leadingAnchor.constraint(equalTo: orientation == .portrait ? view.leadingAnchor : margins.leadingAnchor, constant: 0).isActive = true
        digitView.trailingAnchor.constraint(equalTo: orientation == .portrait ? view.leadingAnchor : margins.trailingAnchor, constant: 0).isActive = true
        
        // main stack view constraints
        mainStack.topAnchor.constraint(equalTo: digitView.bottomAnchor).isActive = true
        mainStack.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: 0).isActive = true
        mainStack.leadingAnchor.constraint(equalTo: orientation == .portrait ? view.leadingAnchor : margins.leadingAnchor).isActive = true
        mainStack.trailingAnchor.constraint(equalTo: orientation == .portrait ? view.leadingAnchor : margins.trailingAnchor).isActive = true
    }
}
