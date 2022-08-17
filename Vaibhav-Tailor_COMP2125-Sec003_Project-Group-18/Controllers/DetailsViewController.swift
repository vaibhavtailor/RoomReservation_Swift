//
//  DetailsViewController.swift
//
//  Created by Vaibhav
//

import UIKit

class DetailsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nameLabel.text = hotelName
        locationLabel.text = hotelLocation
        hotelDetailsTextView.text = hotelDetail
        roomDetailsTextView.text = hotelRoom
        priceLabel.text = String(format: "$%@ /Day", roomRate)
        hotelImage.image = hotelPicture
        
        //Giving image round corners and bold text
        hotelImage.layer.cornerRadius = 10
        nameLabel.font = UIFont.boldSystemFont(ofSize: 25)
    }
    
    //Outlets
    @IBOutlet weak var hotelImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var hotelDetailsTextView: UITextView!
    
    @IBOutlet weak var roomDetailsTextView: UITextView!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    //Defining some variables to get data from Table View Controller
    var hotelName: String = ""
    var hotelLocation: String = ""
    var hotelDetail: String = ""
    var hotelRoom: String = ""
    var roomRate: String = ""
    var hotelPicture: UIImage!
    
    @IBAction func selectButton(_ sender: Any) {
        
        //Instantiating Hotel Payment View Controller using Storyboard ID
        let paymentVC: PaymentViewController = self.storyboard?.instantiateViewController(withIdentifier: "PaymentViewController") as! PaymentViewController
        
        //Transferring data of objects to Hotel Payment View Controller
        paymentVC.hotelName = hotelName
        paymentVC.roomPrice = roomRate
        paymentVC.hotelPicture = hotelPicture
        
        //Navigating to Hotel Payment View Controller
        self.navigationController?.pushViewController(paymentVC, animated: true)
        
    }
    

}
