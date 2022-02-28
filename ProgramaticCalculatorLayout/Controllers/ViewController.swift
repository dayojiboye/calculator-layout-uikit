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
    let customLabel = CustomLabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        let margins = view.safeAreaLayoutGuide
        let orientation = UIDevice.current.orientation // to check current orientation of the device
        
        //  digit label
        let digitLabel = customLabel.renderLabel(text: "0", font: 32, color: .white, alignment: .right, weight: "bold", backgroundColor: "#000000")
        
        // digit view
        let digitView = UIView()
        digitView.backgroundColor = .black
        digitView.addSubview(digitLabel)
        
        // digit label constraints
        digitLabel.translatesAutoresizingMaskIntoConstraints = false
        digitLabel.topAnchor.constraint(equalTo: digitView.topAnchor, constant: 0).isActive = true
        digitLabel.bottomAnchor.constraint(equalTo: digitView.bottomAnchor, constant: 0).isActive = true
        digitLabel.leadingAnchor.constraint(equalTo: digitView.layoutMarginsGuide.leadingAnchor).isActive = true
        digitLabel.trailingAnchor.constraint(equalTo: digitView.layoutMarginsGuide.trailingAnchor).isActive = true
        
        // main stack view
        let mainStack = UIStackView()
        mainStack.axis = NSLayoutConstraint.Axis.vertical
        mainStack.alignment = UIStackView.Alignment.fill
        mainStack.distribution = UIStackView.Distribution.fillEqually
        mainStack.spacing = 1
        mainStack.contentMode = UIView.ContentMode.scaleAspectFill
        mainStack.frame = view.frame
        
        // first stack view
        let firstStack = UIStackView()
        firstStack.axis = NSLayoutConstraint.Axis.horizontal
        firstStack.alignment = UIStackView.Alignment.fill
        firstStack.distribution = UIStackView.Distribution.fillEqually
        firstStack.spacing = 1
        
        firstStack.addArrangedSubview(customLabel.renderLabel(text: "%", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#000"))
        firstStack.addArrangedSubview(customLabel.renderLabel(text: "+/-", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#000"))
        firstStack.addArrangedSubview(customLabel.renderLabel(text: "AC", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#000"))
        firstStack.addArrangedSubview(customLabel.renderLabel(text: "÷", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#daa520"))
        
        // second stack view
        let secondStack = UIStackView()
        secondStack.axis = NSLayoutConstraint.Axis.horizontal
        secondStack.alignment = UIStackView.Alignment.fill
        secondStack.distribution = UIStackView.Distribution.fillEqually
        secondStack.spacing = 1
        
        secondStack.addArrangedSubview(customLabel.renderLabel(text: "7", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#1C86EE"))
        secondStack.addArrangedSubview(customLabel.renderLabel(text: "8", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#1C86EE"))
        secondStack.addArrangedSubview(customLabel.renderLabel(text: "9", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#1C86EE"))
        secondStack.addArrangedSubview(customLabel.renderLabel(text: "x", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#daa520"))
        
        // third stack view
        let thirdStack = UIStackView()
        thirdStack.axis = NSLayoutConstraint.Axis.horizontal
        thirdStack.alignment = UIStackView.Alignment.fill
        thirdStack.distribution = UIStackView.Distribution.fillEqually
        thirdStack.spacing = 1
        
        thirdStack.addArrangedSubview(customLabel.renderLabel(text: "4", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#1C86EE"))
        thirdStack.addArrangedSubview(customLabel.renderLabel(text: "5", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#1C86EE"))
        thirdStack.addArrangedSubview(customLabel.renderLabel(text: "6", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#1C86EE"))
        thirdStack.addArrangedSubview(customLabel.renderLabel(text: "-", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#daa520"))
        
        // fourth stack view
        let fourthStack = UIStackView()
        fourthStack.axis = NSLayoutConstraint.Axis.horizontal
        fourthStack.alignment = UIStackView.Alignment.fill
        fourthStack.distribution = UIStackView.Distribution.fillEqually
        fourthStack.spacing = 1
        
        fourthStack.addArrangedSubview(customLabel.renderLabel(text: "1", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#1C86EE"))
        fourthStack.addArrangedSubview(customLabel.renderLabel(text: "2", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#1C86EE"))
        fourthStack.addArrangedSubview(customLabel.renderLabel(text: "3", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#1C86EE"))
        fourthStack.addArrangedSubview(customLabel.renderLabel(text: "+", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#daa520"))
        
        // fifth stack
        let fifthStack = UIStackView()
        fifthStack.axis = NSLayoutConstraint.Axis.horizontal
        fifthStack.alignment = UIStackView.Alignment.fill
        fifthStack.distribution = UIStackView.Distribution.fillEqually
        fifthStack.spacing = 1
        
        fifthStack.addArrangedSubview(customLabel.renderLabel(text: ".", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#1C86EE"))
        fifthStack.addArrangedSubview(customLabel.renderLabel(text: "=", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#daa520"))
        
        // last stack
        let lastStack = UIStackView()
        lastStack.axis = NSLayoutConstraint.Axis.horizontal
        lastStack.alignment = UIStackView.Alignment.fill
        lastStack.distribution = UIStackView.Distribution.fillEqually
        lastStack.spacing = 1
        
        lastStack.addArrangedSubview(customLabel.renderLabel(text: "0", font: 18, color: .white, alignment: .center, weight: "bold", backgroundColor: "#1C86EE"))
        lastStack.addArrangedSubview(fifthStack)
        
        view.addSubview(mainStack)
        view.addSubview(digitView)
        mainStack.addArrangedSubview(firstStack)
        mainStack.addArrangedSubview(secondStack)
        mainStack.addArrangedSubview(thirdStack)
        mainStack.addArrangedSubview(fourthStack)
        mainStack.addArrangedSubview(lastStack)
        
        // digit label constraints
        digitView.translatesAutoresizingMaskIntoConstraints = false
        digitView.topAnchor.constraint(equalTo: margins.topAnchor, constant: 0).isActive = true
        digitView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        digitView.leadingAnchor.constraint(equalTo: orientation == .portrait ? view.leadingAnchor : margins.leadingAnchor, constant: 0).isActive = true
        digitView.trailingAnchor.constraint(equalTo: orientation == .portrait ? view.leadingAnchor : margins.trailingAnchor, constant: 0).isActive = true
        
        // main view constraints
        mainStack.translatesAutoresizingMaskIntoConstraints = false
        mainStack.topAnchor.constraint(equalTo: digitView.bottomAnchor).isActive = true
        mainStack.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: 0).isActive = true
        mainStack.leadingAnchor.constraint(equalTo: orientation == .portrait ? view.leadingAnchor : margins.leadingAnchor).isActive = true
        mainStack.trailingAnchor.constraint(equalTo: orientation == .portrait ? view.leadingAnchor : margins.trailingAnchor).isActive = true
    }
}

