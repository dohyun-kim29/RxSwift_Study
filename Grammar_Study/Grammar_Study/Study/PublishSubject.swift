//
//  PublishSubject.swift
//  Grammar_Study
//
//  Created by DohyunKim on 2020/07/13.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import UIKit
import RxSwift


enum MyError: Error {
    case error
    
}

let subject = PublishSubject<String>()


func publishSubject1() {
    subject.onNext("Hello")
    
    let o1 = subject.subscribe { print(">> 1", $0) }
    o1.disposed(by: disposeBag)
    
    subject.onNext("RxSWift")
    
    let o2 = subject.subscribe { print(">> 2", $0) }
    o2.disposed(by: disposeBag)
    
    subject.onNext("Subject")
    
    //subject.onCompleted()
    subject.onError(MyError.error)
    
    let o3 = subject.subscribe { print(">> 3", $0) }
    o3.disposed(by: disposeBag)
}
