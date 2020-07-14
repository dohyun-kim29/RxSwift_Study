//
//  filter.swift
//  Grammar_Study
//
//  Created by DohyunKim on 2020/07/14.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import UIKit
import RxSwift

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

func filter1() {
    
    Observable.from(numbers)
        .filter { $0.isMultiple(of: 2) }
        .subscribe { print($0) }
        .disposed(by: disposeBag)
}
