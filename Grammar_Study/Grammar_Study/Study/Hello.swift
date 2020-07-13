//
//  Hello.swift
//  Grammar_Study
//
//  Created by DohyunKim on 2020/07/13.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

let disposeBag = DisposeBag()

func hello() {
    
    Observable.just("Hello, RxSwift")
    .subscribe{ print($0) }
    .disposed(by: disposeBag)

}

