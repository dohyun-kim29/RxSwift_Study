//
//  flatmap.swift
//  Grammar_Study
//
//  Created by DohyunKim on 2020/07/14.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import UIKit
import RxSwift

let a = BehaviorSubject(value: 1)
let b = BehaviorSubject(value: 2)

let subject2 = PublishSubject<BehaviorSubject<Int>>()


func flatmap1() {
    
    subject2
        .flatMap { $0.asObservable() }
        .subscribe { print($0) }
        .disposed(by: disposeBag)
    
    subject2.onNext(a)
    subject2.onNext(b)
    
    a.onNext(11)
    b.onNext(22)
    
}


