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

    @IBOutlet weak var FNameLabel: UITextField!
    @IBOutlet weak var LNameLabel: UITextField!
    @IBOutlet weak var EmailLabel: UITextField!
    @IBOutlet weak var UsernameLabel: UITextField!
    @IBOutlet weak var PasswordLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func onSignup(_ sender: Any) {
        let user = PFUser()
        let Fname = FNameLabel.text!
        let LName = LNameLabel.text!
        let Username = UsernameLabel.text!
        let Password = PasswordLabel.text!
        let Email = EmailLabel.text!
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
