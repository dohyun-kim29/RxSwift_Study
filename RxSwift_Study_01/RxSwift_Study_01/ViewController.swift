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
        bindUI()
        // Do any additional setup after loading the view.
    }

    private func bindUI() {
        
        (idField.rx.text.orEmpty
            .map(checkEmailValid(_:))
            .subscribe(onNext: {b in self.idVaildView.isHidden = b}) as AnyObject)
    
        
        (pwField.rx.text.orEmpty
            .map(checkPasswordValid(_:))
            .subscribe(onNext: {b in self.pwVaildView.isHidden = b}) as AnyObject)
        
    }
    
    private func checkEmailValid(_ email: String) -> Bool {
        return email.contains("@") && email.contains(".")
    }

    private func checkPasswordValid(_ password: String) -> Bool {
        return password.count > 5 && password.contains("!") || password.contains("@") ||
        password.contains("#") ||
        password.contains("$")
    }
}

