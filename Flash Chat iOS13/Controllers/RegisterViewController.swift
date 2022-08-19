//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        let email = emailTextfield.text ?? ""
        let password = passwordTextfield.text ?? ""
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let e = error {
                //localized Description will have the error pop up in the users language
                print(e.localizedDescription)
            } else{
                //Go to the chat view controller, wtih segue actions
                self.performSegue(withIdentifier: "RegisterToChat", sender: self)
                
            }
        }
    }
}
