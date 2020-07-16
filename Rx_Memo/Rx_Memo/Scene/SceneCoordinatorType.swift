//
//  SceneCoordinatorType.swift
//  Rx_Memo
//
//  Created by DohyunKim on 2020/07/16.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import Foundation
import RxSwift

protocol SceneCoordinatorType {
    @discardableResult
    func transition(to scene: Scene, using style: TransitionStyle, animated: Bool)
    -> Completable
    
    @discardableResult
    func close(animated: Bool) -> Completable
}

