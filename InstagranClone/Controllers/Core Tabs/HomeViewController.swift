//
//  ViewController.swift
//  InstagranClone
//
//  Created by Cátia Souza on 04/05/21.
//

import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        handleNoAuthentication()
        do {
            try Auth.auth().signOut()
        }catch {
            print("==== FALHA")
        }
    }
    private func handleNoAuthentication(){
        //check auth status
        if Auth.auth().currentUser == nil {
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false)
            
        }
    }
}

