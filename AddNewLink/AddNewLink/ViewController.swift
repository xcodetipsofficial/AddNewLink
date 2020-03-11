//
//  ViewController.swift
//  AddNewLink
//
//  Created by Kyle Wilson on 2020-03-10.
//  Copyright © 2020 Xcode Tips. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var addNewLinkButton: UIButton!
    @IBOutlet weak var pasteLinkTextField: TextField!
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        saveButton.layer.cornerRadius = 5
        saveButton.alpha = 0
        pasteLinkTextField.alpha = 0
        imageView.alpha = 0
        saveButton.isEnabled = false
        pasteLinkTextField.isEnabled = false
    }


    @IBAction func saveTapped(_ sender: Any) {
        addNewLinkButton.isEnabled = true
        saveButton.isEnabled = false
        pasteLinkTextField.isEnabled = false
        UIView.animate(withDuration: 1.0) {
            self.addNewLinkButton.alpha = 1
            self.imageView.alpha = 0
            self.pasteLinkTextField.alpha = 0
            self.saveButton.alpha = 0
        }
    }
    
    
    @IBAction func addNewLinkTapped(_ sender: Any) {
        addNewLinkButton.isEnabled = false
        saveButton.isEnabled = true
        pasteLinkTextField.isEnabled = true
        UIView.animate(withDuration: 1.0) {
            self.addNewLinkButton.alpha = 0
            self.imageView.alpha = 1
            self.pasteLinkTextField.alpha = 1
            self.saveButton.alpha = 1
        }
    }
}

