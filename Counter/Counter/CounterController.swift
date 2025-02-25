//
//  CounterController.swift
//  Counter
//
//  Created by Eunsung on 2/24/25.
//

import UIKit

class CounterController {
    private var counter: CounterModel
    
    init(counter: CounterModel) {
        self.counter = counter
    }
    
    var currentCount: Int {
        return counter.count
    }
    var isAtMax: Bool {
        return counter.isAtMax
    }
    var isAtMin: Bool {
        return counter.isAtMin
    }
    
    func incrementAction() {
        counter.incrementCount()
    }
    
    func decrementAction() {
        counter.decrementCount()
    }
    
    func resetAction() {
        counter.resetCount()
    }
}
