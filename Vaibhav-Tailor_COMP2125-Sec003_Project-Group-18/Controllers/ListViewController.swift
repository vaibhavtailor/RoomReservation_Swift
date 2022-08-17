//
//  ListViewController.swift
//
//  Created by Vaibhav
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    //Calling hotel details from class
    let Hotel = hotels
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //adding hotel data to table
        TableView.delegate = self
        TableView.dataSource = self
    }
    
    @IBOutlet weak var TableView: UITableView!
    
    //Returns total number of rows in table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Hotel.count
    }
    
    //Returns total number of cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Instantiating variables to populate hotel data in each row
        let hotel = Hotel[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HotelTableViewCell
        cell.nameLabel.text = hotel.name
        cell.locationLabel.text = hotel.location
        cell.ratingsLabel.text = hotel.ratings
        cell.hotelImage.image = UIImage(named: hotel.image)
        return cell
    }

    //Setts the height of each row
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 190
    }
    
    //Takes to the next view controller to display the details of the selected hotel
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //Instantiating Hotel Details View Controller using Storyboard ID
        let detailsVC: DetailsViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        
        //Transferring data of objects to Hotel Details View Controller
        let hotel = Hotel[indexPath.row]
        detailsVC.hotelName = hotel.name
        detailsVC.hotelDetail = hotel.hotelDetails
        detailsVC.hotelLocation = hotel.location
        detailsVC.hotelRoom = hotel.roomDetails
        detailsVC.roomRate = hotel.roomPrice
        detailsVC.hotelPicture = UIImage(named: hotel.image)
        
        //Navigating to Hotel Details View Controller
        self.navigationController?.pushViewController(detailsVC, animated: true)
    }
    
}
