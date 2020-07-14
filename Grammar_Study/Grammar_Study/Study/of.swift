//
//  of.swift
//  Grammar_Study
//
//  Created by DohyunKim on 2020/07/14.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import UIKit
import RxSwift

let apple = "🍏"
let orange = "🍊"
let kiwi = "🥝"

func of1() {
    Observable.of(apple, orange, kiwi)
        .subscribe { element in print(element) }
        .disposed(by: disposeBag)
}

func of2() {
    Observable.of([1, 2], [3, 4], [5, 6])
        .subscribe { element in print(element) }
        .disposed(by: disposeBag)
}

