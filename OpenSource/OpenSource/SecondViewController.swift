//
//  SecondViewController.swift
//  OpenSource
//
//  Created by 김정호 on 11/18/23.
//

import UIKit
import LoadingShimmer

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        LoadingShimmer.startCovering(view, with: nil)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            LoadingShimmer.stopCovering(self.view)
        }
    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
