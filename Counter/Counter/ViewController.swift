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
    }
    
    @IBAction func didTapDecrementButton(_ sender: Any) {
        counterController.decrementAction()
        updateUI()
    }
    
    @IBAction func didTapResetButton(_ sender: Any) {
        counterController.resetAction()
        updateUI()
    }
}

