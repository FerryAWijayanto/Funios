//
//  FlagsTableViewCell.swift
//  Funios TableView XIB
//
//  Created by Ferry Adi Wijayanto on 24/07/22.
//

import UIKit

class FlagsTableViewCell: UITableViewCell {
    
    static let cellID = "FlagsTableViewCell"

    @IBOutlet weak var flagImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(country: Country) {
        imageView?.layer.masksToBounds = true
        imageView?.image = UIImage(named: country.imageName)
        titleLabel.text = country.countryName
        subtitleLabel.text = country.description
    }
    
}
