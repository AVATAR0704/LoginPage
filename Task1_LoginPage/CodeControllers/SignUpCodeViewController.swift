//
//  SignUpViewController.swift
//  Task1_LoginPage
//
//  Created by Macservis on 04/04/22.
//

import UIKit

class SignUpCodeViewController: UIViewController {

    let nmFullNameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Full Name"
        textField.backgroundColor = UIColor.lightGray
        textField.layer.cornerRadius = 5
        return textField
    }()
    
    let nmEmailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email"
        textField.backgroundColor = UIColor.lightGray
        textField.layer.cornerRadius = 5
        return textField
    }()
    
    let nmPassvordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.backgroundColor = UIColor.lightGray
        textField.layer.cornerRadius = 5
        return textField
    }()
    
    let nmConfirmPasswordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Confirm Password"
        textField.backgroundColor = UIColor.lightGray
        textField.layer.cornerRadius = 5
        return textField
    }()
    
    
    let nmSignUpButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Sign Up", for: UIControl.State.normal)
        button.setTitleColor(UIColor.white, for: UIControl.State.normal)
        button.backgroundColor = UIColor.systemRed
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(signUpTapped), for: UIControl.Event.touchDown)
        return button
    }()
    
    
    let nmStackView: UIStackView = {
        let stackview = UIStackView()
        stackview.axis = NSLayoutConstraint.Axis.vertical
        stackview.spacing = 20
        stackview.distribution = UIStackView.Distribution.fillEqually
        return stackview
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        startFunction()
    }
    

    
    //MARK: Methods
   
    func  startFunction() {
        self.view.backgroundColor = UIColor.darkGray
        
        view.addSubview(nmStackView)
        
        nmStackView.addArrangedSubview(nmFullNameTextField)
        nmStackView.addArrangedSubview(nmEmailTextField)
        nmStackView.addArrangedSubview(nmPassvordTextField)
        nmStackView.addArrangedSubview(nmConfirmPasswordTextField)
        nmStackView.addArrangedSubview(nmSignUpButton)
        
        
        
        startConstraints()
        startNavigation()
    }

    
    func  startNavigation() {
        title = "Sign Up"
        
    }
    
    func startConstraints() {
        
        nmFullNameTextField.translatesAutoresizingMaskIntoConstraints = false
        nmFullNameTextField.leftAnchor.constraint(equalTo: nmStackView.leftAnchor).isActive = true
        nmFullNameTextField.rightAnchor.constraint(equalTo: nmStackView.rightAnchor).isActive = true
        
        nmEmailTextField.translatesAutoresizingMaskIntoConstraints = false
        nmEmailTextField.leftAnchor.constraint(equalTo: nmStackView.leftAnchor).isActive = true
        nmEmailTextField.rightAnchor.constraint(equalTo: nmStackView.rightAnchor).isActive = true
        
        
        nmPassvordTextField.translatesAutoresizingMaskIntoConstraints = false
        nmPassvordTextField.leftAnchor.constraint(equalTo: nmStackView.leftAnchor).isActive = true
        nmPassvordTextField.rightAnchor.constraint(equalTo: nmStackView.rightAnchor).isActive = true
        
        nmConfirmPasswordTextField.translatesAutoresizingMaskIntoConstraints = false
        nmConfirmPasswordTextField.leftAnchor.constraint(equalTo: nmStackView.leftAnchor).isActive = true
        nmConfirmPasswordTextField.rightAnchor.constraint(equalTo: nmStackView.rightAnchor).isActive = true
        
        nmSignUpButton.translatesAutoresizingMaskIntoConstraints = false
        nmSignUpButton.leftAnchor.constraint(equalTo: nmStackView.leftAnchor).isActive = true
        nmSignUpButton.rightAnchor.constraint(equalTo: nmStackView.rightAnchor).isActive = true
        
        nmStackView.translatesAutoresizingMaskIntoConstraints = false
        nmStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        nmStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        nmStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        nmStackView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.35).isActive = true
        
        
    }
    
    
    
    //MARK: objc Methods
    @objc func signUpTapped() {

//        navigationController?.popViewController(animated: true)
        
    }
    
}
