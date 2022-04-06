//
//  SignUpViewController.swift
//  Task1_LoginPage
//
//  Created by Macservis on 04/04/22.
//

import UIKit

class SignUpViewController: UIViewController {

    
    @IBOutlet weak var nmSatckView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        startFunction()
    }


    //MARK: Methods
    
    func startFunction() {
        self.view.backgroundColor = UIColor.darkGray
        
        hideKeyboardWhenTappedAround()
        
        nmSatckView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.3).isActive = true
        
        startNavigation()
    }
   
    func startNavigation() {
        title = "Sign Up"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "ic_back3"), style: UIBarButtonItem.Style.plain, target: self, action: #selector(leftTapped))
        
        navigationController?.navigationBar.tintColor = UIColor.white
        
    }

    //MARK: objc methods
    
    @objc func leftTapped() {
        navigationController?.popViewController(animated: true)
    }
    
}
