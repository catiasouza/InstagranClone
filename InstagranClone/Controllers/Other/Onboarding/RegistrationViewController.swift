//
//  RegistrationViewController.swift
//  InstagranClone
//
//  Created by Cátia Souza on 04/05/21.
//

import UIKit

class RegistrationViewController: UIViewController {
    //conferir p ver se precisa
    struct Constants {
        static let cornerRadius: CGFloat = 8.0
    }
    private let usernameField: UITextField = {
        let field = UITextField()
        field.placeholder = "Username..."
        field.returnKeyType = .next
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.layer.masksToBounds = true
        field.layer.cornerRadius = Constants.cornerRadius
        field.backgroundColor = .secondarySystemBackground
        field.layer.borderWidth = 1.0
        field.layer.borderColor = UIColor.secondaryLabel.cgColor
        return field
    }()
    
    private let emailfied: UITextField = {
        let field = UITextField()
        field.placeholder =  "Email..."
        field.returnKeyType = .next
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.layer.masksToBounds = true
        field.layer.cornerRadius = Constants.cornerRadius
        field.backgroundColor = .secondarySystemBackground
        field.layer.borderWidth = 1.0
        field.layer.borderColor = UIColor.secondaryLabel.cgColor
        return field
    }()
    
    private let passwordField: UITextField = {
        let field = UITextField()
        field.placeholder =  "Password..."
        field.returnKeyType = .next
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.layer.masksToBounds = true
        field.layer.cornerRadius = Constants.cornerRadius
        field.backgroundColor = .secondarySystemBackground
        field.layer.borderWidth = 1.0
        field.layer.borderColor = UIColor.secondaryLabel.cgColor
        return field
    }()
    private let registerButton: UIButton = {
        let button = UIButton()
        button.setTitle("Password...", for: .normal)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = Constants.cornerRadius
        button.backgroundColor = .systemGreen
        button.setTitleColor(.white, for: .normal)
        
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(usernameField)
        view.addSubview(emailfied)
        view.addSubview(passwordField)
        view.addSubview(registerButton)
        view.backgroundColor = .systemBackground
       
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        usernameField.frame = CGRect(x: 20, y: view.safeAreaInsets.top+10, width: view.width-40, height: 52)
        emailfied.frame = CGRect(x: 20, y: usernameField.botton+10, width: view.width-40, height: 52)
        passwordField.frame = CGRect(x: 20, y: emailfied.botton+10, width: view.width-40, height: 52)
        registerButton.frame = CGRect(x: 20, y: passwordField.botton+10, width: view.width-40, height: 52)
    }


}
