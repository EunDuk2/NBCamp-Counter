//
//  CounterModel.swift
//  Counter
//
//  Created by Eunsung on 2/24/25.
//

import Foundation

struct CounterModel {
    private(set) var count = 0
    private(set) var minLimit: Int = -10
    private(set) var maxLimit: Int = 10
    
    mutating func incrementCount() {
        if count < maxLimit {
            count += 1
        }
    }
    mutating func decrementCount() {
        if count > minLimit {
            count -= 1
        }
    }
    mutating func resetCount() {
        count = 0
    }
    
    var isAtMax: Bool {
        return count >= maxLimit
    }
    var isAtMin: Bool {
        return count <= minLimit
    }
}
