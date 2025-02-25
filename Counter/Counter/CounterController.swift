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
    var isMaxValueReached: Bool {
        return counter.maxValueReached()
    }
    var isMinValueReached: Bool {
        return counter.minValueReached()
    }
    
    func incrementAction() {
        if !isMaxValueReached {
            counter.incrementCount()
        }
    }
    
    func decrementAction() {
        if !isMinValueReached {
            counter.decrementCount()
        }
    }
    
    func resetAction() {
        counter.resetCount()
    }
}
