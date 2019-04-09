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
    
    @IBOutlet weak var UserNameField: UITextField!
    @IBOutlet weak var passwordFeild: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func onLogin(_ sender: Any) {
        let user = PFUser()
        let username = UserNameField.text!
        let password = passwordFeild.text!
        //assigning input feilds to vars.
        PFUser.logInWithUsername(inBackground: username, password: password)
        {(user, Error) in
            if user != nil {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            }else {
                print ("Error: \(Error?.localizedDescription)")
            }
        }
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
