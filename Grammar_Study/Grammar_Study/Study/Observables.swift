//
//  Observables.swift
//  Grammar_Study
//
//  Created by DohyunKim on 2020/07/13.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import UIKit
import RxSwift


func firstObservable() {
    
    Observable<Int>.create { (observer) -> Disposable in
        observer.on(.next(0))
        observer.onNext(1)
        
        observer.onCompleted()
        
        return Disposables.create()
    }

}


func secondObservable() {
    
    Observable.from([0, 1])
    
}

