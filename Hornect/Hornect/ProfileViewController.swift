//
//  ProfileViewController.swift
//  Hornect
//
//  Created by Myron on 4/16/19.
//  Copyright © 2019 Myron. All rights reserved.
//

import UIKit
import AlamofireImage
import Parse

class ProfileViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    //UIImagePickerControllerDelegate- Give you camera events,
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var FNameLabel: UITextField!
    @IBOutlet weak var LNameLabel: UITextField!
    @IBOutlet weak var ClassLabel: UITextField!
    @IBOutlet weak var MajorLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func onProfileButton(_ sender: Any) {
        let picker = UIImagePickerController()
        //Easier methhod of connection
        picker.delegate = self
        //Calls back to app after recieving image
        picker.allowsEditing = true
        
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            picker.sourceType = .camera
        }else{
            picker.sourceType = .photoLibrary
        }
        
        present(picker, animated: true, completion: nil)
    }
    //Returning the image
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.editedImage] as! UIImage
        
        let size = CGSize(width: 300, height: 300) //Selecting a graphic size
        let scaledImage = image.af_imageScaled(to: size) //use alamo to scale image down
        
        imageView.image = scaledImage //placing scaled image inside of image
        
        dismiss(animated: true, completion: nil) //dismiss camera view
    }
    

    @IBAction func OnContinueButton(_ sender: Any) {
        let user = PFUser.current()
        user!["First_Name"] = FNameLabel.text!
        user!["Last_Name"] = LNameLabel.text!
        user!["Class"] = ClassLabel.text!
        user!["Major"] = MajorLabel.text!
        user!.saveInBackground {
            (success: Bool, error: Error?) in
            if (success) {
                self.performSegue(withIdentifier: "SignedUpSegue", sender: nil)
            } else {
                print(error?.localizedDescription)
            }
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

