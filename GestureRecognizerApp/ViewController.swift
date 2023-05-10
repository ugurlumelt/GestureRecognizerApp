//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Meltem Uğurlu on 2.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    var isLatte = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }
    @objc func changePic(){
        if isLatte == true {
            imageView.image = UIImage(named: "filtreCoffee")
            myLabel.text = "Filter Coffee"
            isLatte = false
        } else {
            imageView.image = UIImage(named: "latte")
            myLabel.text = "Latte"
            isLatte = true
        }
        
    }

}

