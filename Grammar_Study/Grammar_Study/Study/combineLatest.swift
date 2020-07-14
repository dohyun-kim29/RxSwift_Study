//
//  combineLatest.swift
//  Grammar_Study
//
//  Created by DohyunKim on 2020/07/14.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import UIKit
import RxSwift

let greetings = PublishSubject<String>()
let languages = PublishSubject<String>()

func combineLatest1() {
    
    Observable.combineLatest(greetings, languages) { lhs, rhs
        -> String in
        return "\(lhs)\(rhs)"
    }
    .subscribe { print($0) }
    .disposed(by: disposeBag)
    
    greetings.onNext("Hi")
    languages.onNext("World!")
    
    greetings.onNext("Hello")
    languages.onNext("RxSwift!")
    
//    greetings.onCompleted()
    greetings.onError(MyError.error)
    languages.onNext("SwiftUI")
    
    languages.onCompleted()
    
}
