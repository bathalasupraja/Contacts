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
        
    }
}
        

