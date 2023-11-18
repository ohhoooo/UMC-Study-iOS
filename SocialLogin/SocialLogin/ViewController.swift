//
//  ViewController.swift
//  SocialLogin
//
//  Created by 김정호 on 11/19/23.
//

import UIKit
import KakaoSDKCommon
import KakaoSDKAuth
import KakaoSDKUser

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButtonTapped(_ sender: UIButton) {
        // 카카오계정으로 로그인
        UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
            if let error = error {
                print(error)
                print("카카오톡 로그인 실패")
            }
            else {
                print("카카오톡 로그인 성공")
                //do something
                _ = oauthToken
            }
        }
    }
    
    @IBAction func logoutButtonTapped(_ sender: UIButton) {
        // 로그아웃 - 로그인 했을때만 사용
        UserApi.shared.logout {(error) in
            if let error = error {
                print(error)
                print("카카오톡 로그아웃 실패")
            }
            else {
                print("카카오톡 로그아웃 성공")
            }
        }
    }
}

