//
//  Memo.swift
//  Rx_Memo
//
//  Created by DohyunKim on 2020/07/14.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import Foundation

struct Memo: Equatable {
    var content: String
    var insertDate: Date
    var identity : String
    
    init(content: String, insertDate: Date = Date()) {
        self.content = content
        self.insertDate = insertDate
        self.identity = "\(insertDate.timeIntervalSinceReferenceDate)"
    }
    
    init(original: Memo, updatedContent: String) {
        self = original
        self.content = updatedContent
    }
}
