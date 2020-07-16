//
//  TransitionModel.swift
//  Rx_Memo
//
//  Created by DohyunKim on 2020/07/16.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import Foundation

enum TransitionStyle {
    case root
    case push
    case modal
}

enum TransitionError: Error {
    case navigationControllerMissing
    case cannotPop
    case unknown
}
