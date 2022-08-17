//
//  CreateAccountViewController.swift
//
//  Created by Vaibhav
//

import UIKit

class CreateAccountViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        logoImage.image = UIImage(named: "logo")
        
        //Giving image round corners
        logoImage.layer.cornerRadius = 12
    }
    
    //Outlets
    @IBOutlet weak var logoImage: UIImageView!
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passTextField: UITextField!
    
    @IBOutlet weak var confirmPassTextField: UITextField!
    
    @IBAction func createButton(_ sender: Any) {
        
        //Defining variables to convert textField to string.
        let firstName = firstNameTextField.text
        let lastName = lastNameTextField.text
        let email = emailTextField.text
        let password = passTextField.text
        let confirmPassword = confirmPassTextField.text
        
        //validations
        if(firstName!.isEmpty || lastName!.isEmpty || email!.isEmpty || password!.isEmpty || confirmPassword!.isEmpty){
            errorMessage(error: "All Field Are Required!")
            return
        
        }
        
        if(password != confirmPassword){
            errorMessage(error: "Confirm Password Should Match The Password")
            return
        }
        
        //locally store data
        UserDefaults.standard.set(firstName,forKey:"firstName")
        UserDefaults.standard.set(lastName,forKey:"firstName")
        UserDefaults.standard.set(email,forKey:"email")
        UserDefaults.standard.set(password,forKey:"password")
        UserDefaults.standard.synchronize()
        
        let myMessage = UIAlertController(title: "Alert", message:"Registration is sucessful.", preferredStyle: UIAlertController.Style.alert)
        
        let okAction = UIAlertAction(title:"OK", style:UIAlertAction.Style.default){
            action in
            self.dismiss(animated: true, completion: nil)
        }
        myMessage.addAction(okAction)
        self.present(myMessage, animated: true, completion:nil)
    }
        
        
        func errorMessage(error:String){
            
            let myMessage = UIAlertController(title: "Error", message:error, preferredStyle: UIAlertController.Style.alert)
            
            let okAction = UIAlertAction(title:"OK", style:UIAlertAction.Style.default, handler:nil)
            
            myMessage.addAction(okAction)
            self.present(myMessage, animated:true,
            completion:nil)
            
        }
    

}
