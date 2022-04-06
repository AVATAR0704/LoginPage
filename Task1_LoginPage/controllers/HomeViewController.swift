//
//  HomeViewController.swift
//  Task1_LoginPage
//
//  Created by Macservis on 04/04/22.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var nmEmailTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       startFunction()
    }


   //MARK: MEthods
    func  startFunction() {
        view.backgroundColor = UIColor.darkGray
        
        nmEmailTextField.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.06).isActive = true
        
        hideKeyboardWhenTappedAround()
        
        
        
        startNavigation()
        
    }
   
    func startNavigation() {
        title  = "Login"
        

    }

    //MARK: Actions
    
    @IBAction func nmSignUp(_ sender: UIButton) {
        navigationController?.pushViewController(SignUpViewController(), animated: true)
    }
    
    
    
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

