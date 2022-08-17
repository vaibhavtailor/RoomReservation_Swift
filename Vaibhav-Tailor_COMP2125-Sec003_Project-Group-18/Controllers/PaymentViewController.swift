//
//  PaymentViewController.swift
//
//  Created by Vaibhav
//

import UIKit

class PaymentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nameLabel.text = hotelName
        hotelImage.image = hotelPicture
        
        //Giving image round corners and bold text
        hotelImage.layer.cornerRadius = 10
        nameLabel.font = UIFont.boldSystemFont(ofSize: 25)
        
        //Dateformatter to get dates in proper format
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        fromDateTextField.text = dateFormatter.string(from: Date())
    
    }
    	
    //Outlets
    @IBOutlet weak var hotelImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var fromDateTextField: UITextField!
    
    @IBOutlet weak var toDateTextField: UITextField!
    
    @IBOutlet weak var rentLabel: UILabel!
    
    @IBOutlet weak var taxesLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var cardTextField: UITextField!
    
    @IBOutlet weak var expTextField: UITextField!
    
    @IBOutlet weak var ccvTextField: UITextField!
    
    //Defining some variables to get data from Table View Controller
    var hotelName: String = ""
    var roomPrice: String = ""
    var hotelPicture: UIImage!
    
    //Alert message function
    func allMessage(message:String){
        
        let myMessage = UIAlertController(title: "Alert", message:message, preferredStyle: UIAlertController.Style.alert)
        
        let okAction = UIAlertAction(title:"OK", style:UIAlertAction.Style.default, handler:nil)
        
        myMessage.addAction(okAction)
        self.present(myMessage, animated:true,
        completion:nil)
        
    }
    
    @IBAction func confirmButton(_ sender: UIButton) {
        
        //Defining some variables to get the number of works in TextField
        let cardNum = cardTextField.text!.count
        let exp = expTextField.text!.count
        let cvv = ccvTextField.text!.count
        
        //Applying Validations
        //Displaying error if date fields are empty
        if toDateTextField.text!.isEmpty || fromDateTextField.text!.isEmpty {
            allMessage(message: "Please input dates.")
        }
        //Displaying error if card number is not of 16 digits
        else if cardNum < 16 || cardNum > 16{
            allMessage(message: "The card number should be of 16 digits only.")
        }
        //Displaying error if expiry is not of 4 digit
        else if exp < 4 || exp > 4 {
            allMessage(message: "The expiry date should be of 4 digits only.")
        }
        //Displaying error if cvv is not of 3 digits
        else if cvv < 3 || cvv > 3 {
            allMessage(message: "The CVV should be of 3 digits only.")
        }
        //If there are no error, navigating to confirmation page
        else {
            //Instantiating Hotel Confirmation View Controller using Storyboard ID
            let confirmVC: ConfirmViewController = self.storyboard?.instantiateViewController(withIdentifier: "ConfirmViewController") as! ConfirmViewController
            
            //Transferring data of objects to Hotel Confirmation View Controller
            confirmVC.hotelName = hotelName
            confirmVC.fDate = fromDateTextField.text!
            confirmVC.tDate = toDateTextField.text!
            confirmVC.hotelPicture = hotelPicture
            
            //Navigating to Hotel Confirmation View Controller
            self.navigationController?.pushViewController(confirmVC, animated: true)
        }
    }
    
    @IBAction func update(_ sender: UITextField! ) {
        
        //Defining date formatter to format date
        let calender = Calendar.current
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        
        //Getting date from textfield and storing in variable
        let fromDate = dateFormatter.date(from: fromDateTextField.text!)
        let toDate = dateFormatter.date(from: toDateTextField.text!)
        
        //Setting todays date as minimum date for reservation
        let fDate = calender.startOfDay(for: fromDate ?? Date()) // <1>
        let tDate = calender.startOfDay(for: toDate ?? Date()) // <2>
        
        //Calculating the number of days
        let numberOfDays = calender.dateComponents([.day], from: fDate, to: tDate)
       
        //Validating the number of days and displaing information accordingly
        if numberOfDays.day ?? 0 > 0 {
            
            //Defining variables to store the data in double
            let days = Double(numberOfDays.day ?? 0)
            let rate = Double(roomPrice)
            
            //Calculating total rent
            let roomRate = rate! * days
            let tax = roomRate * 0.13
            let total = roomRate + tax
            
            //Displaying the data in label
            rentLabel.text = String(format: "%.0f x $%.1f = $%.2f", days, rate!, roomRate)
            taxesLabel.text = String(format: "$%.2f", tax)
            totalLabel.text = String(format: "$%.2f", total)
        }
        else {
            //Displaying error if dates ae not proper.
            allMessage(message: "To Date must be greater than From Date.")
            toDateTextField.text = ""
            rentLabel.text = ""
            taxesLabel.text = ""
            totalLabel.text = ""
        }
        
    }
    
}
