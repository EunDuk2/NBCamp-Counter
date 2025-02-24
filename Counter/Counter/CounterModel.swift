//
//  CounterModel.swift
//  Counter
//
//  Created by Eunsung on 2/24/25.
//

import Foundation

struct CounterModel {
    private(set) var count = 0
    
    mutating func incrementCount() {
        count += 1
    }
    mutating func decrementCount() {
        count -= 1
    }
    mutating func resetCount() {
        count = 0
    }
}
