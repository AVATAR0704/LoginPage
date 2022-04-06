//
//  LoginViewController.swift
//  Task1_LoginPage
//
//  Created by Macservis on 04/04/22.
//

import UIKit

class LoginViewController: UIViewController {

    
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
    
    let nmSignInButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Sign In", for: UIControl.State.normal)
        button.setTitleColor(UIColor.white, for: UIControl.State.normal)
        button.layer.cornerRadius = 5
        button.backgroundColor = UIColor.systemBlue
        return button
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
    

    func startFunction() {
        self.view.backgroundColor = UIColor.darkGray
        
        hideKeyboardWhenTappedAround()
        
        nmStackView.addArrangedSubview(nmEmailTextField)
        nmStackView.addArrangedSubview(nmPassvordTextField)
        nmStackView.addArrangedSubview(nmSignInButton)
        nmStackView.addArrangedSubview(nmSignUpButton)
        
        
        self.view.addSubview(nmStackView)
        
        
        
        
        startNavigation()
        startConstraints()
    }
    
    func startNavigation() {
        title = "Login"
        
        
    }
  
    
    func startConstraints() {
        
        nmEmailTextField.translatesAutoresizingMaskIntoConstraints = false
        nmEmailTextField.leftAnchor.constraint(equalTo: nmStackView.leftAnchor).isActive = true
        nmEmailTextField.rightAnchor.constraint(equalTo: nmStackView.rightAnchor).isActive = true
        
        
        nmPassvordTextField.translatesAutoresizingMaskIntoConstraints = false
        nmPassvordTextField.leftAnchor.constraint(equalTo: nmStackView.leftAnchor).isActive = true
        nmPassvordTextField.rightAnchor.constraint(equalTo: nmStackView.rightAnchor).isActive = true
        
        nmSignInButton.translatesAutoresizingMaskIntoConstraints = false
        nmSignInButton.leftAnchor.constraint(equalTo: nmStackView.leftAnchor).isActive = true
        nmSignInButton.rightAnchor.constraint(equalTo: nmStackView.rightAnchor).isActive = true
        
        nmSignUpButton.translatesAutoresizingMaskIntoConstraints = false
        nmSignUpButton.leftAnchor.constraint(equalTo: nmStackView.leftAnchor).isActive = true
        nmSignUpButton.rightAnchor.constraint(equalTo: nmStackView.rightAnchor).isActive = true
        
        nmStackView.translatesAutoresizingMaskIntoConstraints = false
        nmStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        nmStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        nmStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        nmStackView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3).isActive = true
        
        
    }
    
    
    //MARK: objc Methods
    @objc func signUpTapped() {

        navigationController?.pushViewController(SignUpCodeViewController(), animated: true)
        
    }
    
    
    
}
