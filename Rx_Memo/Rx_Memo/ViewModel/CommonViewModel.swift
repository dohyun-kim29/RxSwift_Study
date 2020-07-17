//
//  CommonViewModel.swift
//  Rx_Memo
//
//  Created by DohyunKim on 2020/07/17.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class CommonViewModel: NSObject {
    
    let title: Driver<String>
    let sceneCoordinator: SceneCoordinatorType
    let storage: MemoStorageType
    
    init(title: String, sceneCoordinator: SceneCoordinatorType, storage: MemoStorageType) {
        self.title = Observable.just(title).asDriver(onErrorJustReturn: "")
        self.sceneCoordinator = sceneCoordinator
        self.storage = storage
    }
}
