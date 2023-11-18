//
//  SecondViewController.swift
//  Data
//
//  Created by 김정호 on 11/18/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var describeMenuLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    var describeMenuLabelText = ""
    var priceLabelText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        describeMenuLabel.text = describeMenuLabelText
        priceLabel.text = priceLabelText
    }
    
    @IBAction func backButtonTapped(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
}
