//
//  ViewController.swift
//  Mark-1
//
//  Created by Ismael on 03/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    private func button( name: String, color: UIColor) -> UIButton{
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = color
        button.addConstraint(NSLayoutConstraint(
            item: button,
            attribute: .height,
            relatedBy: .equal,
            toItem: button,
            attribute: .width,
            multiplier: 1 / 1,
            constant: 0))
        
        button.setTitle(name, for: .normal)
        return button
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        let rootStack = UIStackView()
        
        let margins = view.layoutMarginsGuide
        
        view.addSubview(rootStack)
        rootStack.axis = NSLayoutConstraint.Axis .vertical
        
        rootStack.translatesAutoresizingMaskIntoConstraints = false
        rootStack.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        rootStack.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        rootStack.bottomAnchor.constraint(equalTo: margins.bottomAnchor).isActive = true
        
        let line = UIStackView()
        
        rootStack.addArrangedSubview(line)
        
        line.axis = .horizontal
        line.translatesAutoresizingMaskIntoConstraints = false
        
        line.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        line.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        
        line.addArrangedSubview(button(name: "0", color: .gray))
        
        
}
}
