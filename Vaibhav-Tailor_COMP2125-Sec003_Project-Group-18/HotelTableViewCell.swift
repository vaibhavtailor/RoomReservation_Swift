//
//  HotelTableViewCell.swift
//
//  Created by Vaibhav
//

import UIKit

class HotelTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet weak var hotelImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var ratingsLabel: UILabel!
    
    @IBOutlet weak var locationLabel: UILabel!

}
