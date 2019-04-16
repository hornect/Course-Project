//
//  SignUpViewController.swift
//  Hornect
//
//  Created by Myron on 4/8/19.
//  Copyright © 2019 Myron. All rights reserved.
//

import UIKit
import Parse

class SignUpViewController: UIViewController {

    @IBOutlet weak var emailFeild: UITextField!
    @IBOutlet weak var usernameFeild: UITextField!
    @IBOutlet weak var passwordFeild: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func onSignup(_ sender: Any) {
        let user = PFUser()
        user.email = emailFeild.text!
        user.username = usernameFeild.text!
        user.password = passwordFeild.text!
        user.signUpInBackground{(sucess,error) in
            if sucess{
                self.performSegue(withIdentifier: "SignUpSegue", sender: nil)
            }else{
                print("Error: \(error?.localizedDescription)")
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
