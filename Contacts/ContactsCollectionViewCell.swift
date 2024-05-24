//
//  ContactsCollectionViewCell.swift
//  Contacts
//
//  Created by Supraja on 24/05/24.
//

import UIKit

class ContactsCollectionViewCell: UICollectionViewCell {
    
    static let id = "ContactsCollectionViewCell"
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var contactImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //234, 230, 240
        contactImageView.layer.cornerRadius = 45
        contactImageView.layer.borderWidth = 2
        contactImageView.layer.borderColor = CGColor(red: 234/255, green: 230/255, blue: 240/255, alpha: 0.969)
        contactImageView.layer.masksToBounds = true
    }
}
        

