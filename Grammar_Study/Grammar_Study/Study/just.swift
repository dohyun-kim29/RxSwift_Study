//
//  just.swift
//  Grammar_Study
//
//  Created by DohyunKim on 2020/07/13.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import UIKit
import RxSwift


let element = "😀"

func just1() {
    
    Observable.just(element)
        .subscribe { event in print(event) }
        .disposed(by: disposeBag)
}

func just2() {
    Observable.just([1, 2, 3])
        .subscribe { event in print(event) }
        .disposed(by: disposeBag)
}


