//
//  LoginViewController.swift
//
//  Created by Vaibhav
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        logoImage.image = UIImage(named: "logo")
        
        //Giving image round corners
        logoImage.layer.cornerRadius = 12
    }
    
    //Outlets
    @IBOutlet weak var logoImage: UIImageView!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passTextField: UITextField!
    
    @IBAction func loginButton(_ sender: Any) {
        
        //Defining variables to convert textField to string.
        let email = emailTextField.text
        let password = passTextField.text
        
        //Storing user data
        let emailStored = UserDefaults.standard.string(forKey: "email")
        let passwordStored = UserDefaults.standard.string(forKey: "password")
        
        //Applying validations
        if(email == emailStored){
            if(password == passwordStored){
                UserDefaults.standard.set(true, forKey:"isLoggedOn")
                UserDefaults.standard.synchronize()
                self.dismiss(animated: true, completion: nil)
                //allMessage(message: "Successfully Logged In")
                
                //Instantiating hotel list View Controller using Storyboard ID
                let listVC: ListViewController = self.storyboard?.instantiateViewController(withIdentifier: "ListViewController") as! ListViewController

                //Navigating to Hotel List View Controller
                self.navigationController?.pushViewController(listVC, animated: true)
            }
            else{
                allMessage(message: "Incorrect Password!")
            }
        }
        else{
            allMessage(message: "Incorrect Email!")
        }
    }
    
    //Displaying alert
    func allMessage(message:String){
        
        let myMessage = UIAlertController(title: "Alert", message:message, preferredStyle: UIAlertController.Style.alert)
        
        let okAction = UIAlertAction(title:"OK", style:UIAlertAction.Style.default, handler:nil)
        
        myMessage.addAction(okAction)
        self.present(myMessage, animated:true,
        completion:nil)
        
    }
    
    @IBAction func createAccButton(_ sender: Any) {
    }
    
    
    
    
    
    
    
   

}
