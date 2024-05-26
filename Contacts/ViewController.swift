//
//  ViewController.swift
//  Contacts
//
//  Created by Supraja on 24/05/24.
//

import UIKit

struct ContactsModel {
    var image: String?
    var name: String
    var number: Int
}

class ViewController: UIViewController {
    
    @IBOutlet weak var contactsCollectionView: UICollectionView!
    
    var contacts = [ContactsModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        createContacts()
        contactsCollectionView.backgroundColor = .white//CGColor(red: 199/255, green: 140/255, blue: 230/255, alpha: 0.969)
        contactsCollectionView.dataSource = self
        contactsCollectionView.delegate = self
    }
    
    func createContacts() {
        contacts.append(ContactsModel(image: "Image1", name: "Chiranjeevi", number: 2233445511))
        contacts.append(ContactsModel(image: "Image2", name: "Maheshbabu", number: 1234567890))
        contacts.append(ContactsModel(image: "Image3", name: "Venkatesh", number: 4563218976))
        contacts.append(ContactsModel(image: "Image4", name: "Nagarjuna", number: 2233445511))
//        contacts.append(ContactsModel(image: "Image5", name: "Prabhas", number: 9976432522))
        contacts.append(ContactsModel(image: "Image6", name: "Sidharth", number: 6577854321))
        contacts.append(ContactsModel(image: "Image7", name: "Dhanush", number: 8876442134))
        contacts.append(ContactsModel(image: "Image8", name: "Ranbir kapoor", number: 2341274398))
        contacts.append(ContactsModel(image: "Image9", name: "Ntr", number: 5738766539))
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        coordinator.animate { _ in
            print("rotating in progress.")
        } completion: { _ in
            print("rotation completed.")
            //self.contactsCollectionView.reloadData()
            self.contactsCollectionView.collectionViewLayout.invalidateLayout()
        }
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        contacts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ContactsCollectionViewCell.id, for: indexPath)
        if let contactsCollectionViewCell = cell as? ContactsCollectionViewCell {
            let model = contacts[indexPath.row]
            if let contacts = model as? ContactsModel {
                contactsCollectionViewCell.nameLabel.text = contacts.name
                contactsCollectionViewCell.numberLabel.text = "\(contacts.number)"
                if let imageName = contacts.image {
                    let image = UIImage(named: imageName)
                    contactsCollectionViewCell.contactImageView.image = image
                }
            }
        }
        return cell
    }
}
    
extension ViewController:  UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewWidth = collectionView.bounds.size.width
        /// each cell should occupie 1/3rd of the collection view width.
        return CGSize(width: collectionViewWidth/3, height: collectionViewWidth/3)
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}


