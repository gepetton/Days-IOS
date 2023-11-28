//
//  LoginViewController.swift
//  Days
//
//  Created by shyn on 11/28/23.
//

import UIKit
import KakaoSDKCommon
import KakaoSDKAuth
import KakaoSDKUser



class LoginViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func kakaoLoginButtonTouchUpInside(_ sender: UIButton) {
        if (UserApi.isKakaoTalkLoginAvailable()) {
            
            //카톡 설치되어있으면 -> 카톡으로 로그인
            UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
                if let error = error {
                    print(error)
                } else {
                    print("카카오 톡으로 로그인 성공")
                    self.presentToMain()
                    
                    _ = oauthToken
                    /// 로그인 관련 메소드 추가
                }
            }
        } else {

            // 카톡 없으면 -> 계정으로 로그인
            UserApi.shared.loginWithKakaoAccount { (oauthToken, error) in
                if let error = error {
                    print(error)
                } else {
                    print("카카오 계정으로 로그인 성공")
                    self.presentToMain()
                    _ = oauthToken
                    // 관련 메소드 추가
                }
            }
        }
    }
    func presentToMain() {
        guard let SecondViewController = self.storyboard?.instantiateViewController(withIdentifier: "MainViewController") as? MainViewController else { return }
        SecondViewController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        //MainViewController.modalPresentationStyle = .fullScreen
        self.present(SecondViewController, animated: true, completion: nil)
    }
    
}
