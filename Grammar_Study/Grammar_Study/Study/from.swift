//
//  from.swift
//  Grammar_Study
//
//  Created by DohyunKim on 2020/07/14.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import UIKit
import RxSwift

let fruits = ["🍏", "🍎", "🍋", "🍓", "🍇"]

func from1() {
    
    Observable.from(fruits)
        .subscribe { element in print(element) }
        .disposed(by: disposeBag)
}
