//
//  ViewController.swift
//  Database
//
//  Created by 김정호 on 11/19/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var joinButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func loginButtonTapped(_ sender: UIButton) {
        let id = UserDefaults.standard.string(forKey : "id") ?? ""
        let pw = UserDefaults.standard.string(forKey : "pw") ?? ""
        
        if idTextField.text == "" {
            titleLabel.text = "아이디가 비어있음"
        } else if pwTextField.text == "" {
            titleLabel.text = "비밀번호가 비어있음"
        } else if id != idTextField.text {
            titleLabel.text = "아이디가 존재하지 않습니다."
        } else if pw != pwTextField.text {
            titleLabel.text = "비밀번호가 불일치합니다."
        } else if id == idTextField.text && pw == pwTextField.text {
            titleLabel.text = "로그인에 성공하였습니다."
        }
    }
    
    @IBAction func joinButtonTapped(_ sender: UIButton) {
        let id = idTextField.text ?? ""
        let pw = pwTextField.text ?? ""
        
        let db = UserDefaults.standard.string(forKey : "id") ?? ""
        
        if id.isEmpty {
            titleLabel.text = "아이디를 입력하세요"
        } else if pw.isEmpty {
            titleLabel.text = "비밀번호를 입력하세요"
        } else if !id.isEmpty && db == id {
            titleLabel.text = "이미 존재하는 ID"
        } else if !id.isEmpty && !pw.isEmpty {
            UserDefaults.standard.set(id, forKey: "id")
            UserDefaults.standard.set(pw, forKey: "pw")
            
            titleLabel.text = "회원가입에 성공하였습니다."
        }
    }
}

