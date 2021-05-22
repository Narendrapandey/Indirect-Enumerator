//
//  ViewController.swift
//  Indirect Enumerator
//
//  Created by Narendra Pandey on 23/05/21.
//

import UIKit

enum MathematicsTrickyOperations{
    case singleVale(Int)
    indirect case add(MathematicsTrickyOperations, MathematicsTrickyOperations)
    indirect case multiply(MathematicsTrickyOperations, MathematicsTrickyOperations)
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstNumber = MathematicsTrickyOperations.singleVale(100)
        let secondNumber = MathematicsTrickyOperations.singleVale(200)
        
        let addition = MathematicsTrickyOperations.add(firstNumber, secondNumber)
        let multiplication = MathematicsTrickyOperations.multiply(firstNumber, secondNumber)
    }
    
    private func calculateResult(_ input: MathematicsTrickyOperations) -> Int {
        
        switch input {
        case .singleVale(let value):
            return value
        }
    }
}
