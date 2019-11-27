//
//  ViewController.swift
//  RxSwift_Study_01
//
//  Created by DohyunKim on 15/11/2019.
//  Copyright © 2019 DohyunKim. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class ViewController: UIViewController {
    
    var disposeBag = DisposeBag()
    
    @IBOutlet weak var idField: UITextField!
    @IBOutlet weak var pwField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var idVaildView: UIView!
    @IBOutlet weak var pwVaildView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButtonTextChanger()
        bindUI()
        // Do any additional setup after loading the view.
    }
    
    func loginButtonTextChanger() {
        if loginButton.isEnabled {
            loginButton.titleLabel?.text = "Not Vaild"
        }
    }
    
    func bindUI() {
        
        (idField.rx.text.orEmpty.map(checkEmailValid1(_:)),
         idField.rx.text.orEmpty.map(checkEmailVaild2(_:))
            .subscribe(onNext: {b in self.idVaildView.isHidden = b})
            .disposed(by: disposeBag))
         
         
         (pwField.rx.text.orEmpty.map(checkPasswordValid1(_:)),
          pwField.rx.text.orEmpty.map(checkPasswordVaild2(_:)),
          pwField.rx.text.orEmpty.map(checkPasswordVaild3(_:))
            .subscribe(onNext: {b in self.pwVaildView.isHidden = b})
            .disposed(by: disposeBag))
          
          
          
          Observable.merge(
            idField.rx.text.orEmpty.map(checkEmailValid1),
            idField.rx.text.orEmpty.map(checkEmailVaild2),
            pwField.rx.text.orEmpty.map(checkPasswordValid1),
            pwField.rx.text.orEmpty.map(checkPasswordVaild2),
            pwField.rx.text.orEmpty.map(checkPasswordVaild3),
            resultSelector: {s1, s2, s3, s4, s5  in s1 && s2}
          )
            
            .subscribe(onNext: {b in self.loginButton.isEnabled = b})
            .disposed(by: disposeBag)
            
            
            
            
        
    }
    
    func checkEmailValid1(_ email: String) -> Bool {
        return email.contains("@")
    }
    
    func checkEmailVaild2(_ email: String) -> Bool {
        return email.contains(".com") ||
            email.contains(".net")
    }
    
    func checkPasswordValid1(_ password: String) -> Bool {
        return password.count > 5
    }
    
    func checkPasswordVaild2(_ password: String) -> Bool {
        return password.contains("!") ||
            password.contains("@") ||
            password.contains("#") ||
            password.contains("*") ||
            password.contains("$") ||
            password.contains("%") ||
            password.contains("&")
    }
    
    func checkPasswordVaild3(_ password: String) -> Bool {
        return password.contains("1") ||
            password.contains("2") ||
            password.contains("3") ||
            password.contains("4") ||
            password.contains("5") ||
            password.contains("6") ||
            password.contains("7") ||
            password.contains("8") ||
            password.contains("9")
    }
    
}
