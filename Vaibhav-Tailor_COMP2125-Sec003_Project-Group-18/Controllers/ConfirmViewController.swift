//
//  ConfirmViewController.swift
//
//  Created by Vaibhav
//

import UIKit

class ConfirmViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nameLabel.text = hotelName
        fromDateLabel.text = fDate
        toDateLabel.text = tDate
        hotelImage.image = hotelPicture
        
        //Giving image round corners and bold text
        hotelImage.layer.cornerRadius = 10
        nameLabel.font = UIFont.boldSystemFont(ofSize: 25)
    }
    
    //Outlets
    @IBOutlet weak var hotelImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var fromDateLabel: UILabel!
    
    @IBOutlet weak var toDateLabel: UILabel!
    
    @IBOutlet weak var greetingsTextView: UITextView!
    
    //Defining some variables to get data from Table View Controller
    var hotelName: String = ""
    var fDate: String = ""
    var tDate: String = ""
    var hotelPicture: UIImage!
    
    @IBAction func returnButton(_ sender: Any) {
        
        //Instantiating Hotel List View Controller using Storyboard ID
        let returnVC: ListViewController = self.storyboard?.instantiateViewController(withIdentifier: "ListViewController") as! ListViewController
        
        //Navigating to Hotel List View Controller
        self.navigationController?.pushViewController(returnVC, animated: true)
        
    }
    
    

}
