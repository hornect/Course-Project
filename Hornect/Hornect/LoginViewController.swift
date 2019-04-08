//
//  LoginViewController.swift
//  Hornect
//
//  Created by Myron on 4/7/19.
//  Copyright © 2019 Myron. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordFeild: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func onLogin(_ sender: Any) {
        let user = PFUser()
        let email = emailField.text!
        let password = passwordFeild.text!
        //assigning input feilds to vars.

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
