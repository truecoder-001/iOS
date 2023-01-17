//
//  ViewController.swift
//  StudyTrue
//
//  Created by Jaison Joy on 12/27/22.
//

import UIKit

class ViewController: UIViewController {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Register"
        label.font = UIFont(name: "CourierNewPS-BoldMT", size: 40)
        return label
    }()
    
    private let nameTextField: UITextField = {
        return UITextField().textField(withPlaceholder: "Name")
    }()
    
    private let addressTextField: UITextField = {
        return UITextField().textField(withPlaceholder: "Address")
    }()
    
    private let placeTextField: UITextField = {
        return UITextField().textField(withPlaceholder: "Place")
    }()
    
    private let saveButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Save", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 5
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(titleLabel)
        
        titleLabel.centerX(inView: view)
        titleLabel.anchor(top:view.safeAreaLayoutGuide.topAnchor)
        
        
        let stack = UIStackView(arrangedSubviews: [nameTextField,addressTextField,placeTextField,saveButton])
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 20
        view.addSubview(stack)
        
        stack.anchor(top: titleLabel.bottomAnchor,left: view.leftAnchor,right: view.rightAnchor,topPadding: 20,leftPadding: 40,rightPadding: 40)
    
 
    }

 
}

