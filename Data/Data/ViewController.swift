//
//  ViewController.swift
//  Data
//
//  Created by 김정호 on 11/18/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mButton: UIButton!
    @IBOutlet weak var lButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    var checkButtonName = "M"

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is SecondViewController {
            guard let vc = segue.destination as? SecondViewController else { return }
            
            if checkButtonName == "M" {
                vc.describeMenuLabelText = "가격 : M (20,000원)"
                vc.priceLabelText = "20,000원"
            } else {
                vc.describeMenuLabelText = "가격 : L (23,000원)"
                vc.priceLabelText = "23,000원"
            }
        }
    }
    
    @IBAction func mButtonTapped(_ sender: UIButton) {
        sender.setImage(UIImage(systemName: "record.circle.fill"), for: .normal)
        lButton.setImage(UIImage(systemName: "circle"), for: .normal)
        checkButtonName = "M"
        nextButton.setTitle("20,000원 담기", for: .normal)
    }
    
    @IBAction func lButtonTapped(_ sender: UIButton) {
        sender.setImage(UIImage(systemName: "record.circle.fill"), for: .normal)
        mButton.setImage(UIImage(systemName: "circle"), for: .normal)
        checkButtonName = "L"
        nextButton.setTitle("23,000원 담기", for: .normal)
    }
}

