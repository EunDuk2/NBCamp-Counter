//
//  ViewController.swift
//  Counter
//
//  Created by Eunsung on 2/20/25.
//

import UIKit

class ViewController: UIViewController {
    var counterController: CounterController = CounterController(counter: CounterModel(count: 0))
    
    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var buttonIncrement: UIButton!
    @IBOutlet weak var buttonDecrement: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
    }
    
    func updateUI() {
        labelResult.text = String(counterController.currentCount)
        
    }
    
    @IBAction func didTapIncrementButton(_ sender: Any) {
        counterController.incrementAction()
        updateUI()
        
        if counterController.isMaxValueReached {
            buttonIncrement.isEnabled = false
        }
        if !counterController.isMinValueReached {
            buttonDecrement.isEnabled = true
        }
    }
    
    @IBAction func didTapDecrementButton(_ sender: Any) {
        counterController.decrementAction()
        updateUI()
        
        if !counterController.isMaxValueReached {
            buttonIncrement.isEnabled = true
        }
        if counterController.isMinValueReached {
            buttonDecrement.isEnabled = false
        }
    }
    
    @IBAction func didTapResetButton(_ sender: Any) {
        counterController.resetAction()
        updateUI()
    }
}

