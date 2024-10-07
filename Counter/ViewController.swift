//
//  ViewController.swift
//  Counter
//
//  Created by Andrey Nobu on 05.10.2024.
//

import UIKit
final class ViewController: UIViewController {

    @IBOutlet private weak var consoleText: UITextView!
    @IBOutlet private weak var nullifierButton: UIButton!
    @IBOutlet private weak var scoreCounter: UILabel!
    @IBOutlet private weak var plusButton: UIButton!
    @IBOutlet private weak var minusButton: UIButton!
    fileprivate var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        consoleText.text = "История изменений:"
    }
    @IBAction private func plusCounter(_ sender: Any) {
        counter += 1
        scoreCounter.text = "Значение счетчика: \(counter)"
        consoleText.text += "\n [\(Date.now)]: значение изменено +1"
    }
    
    @IBAction private func minusCounter(_ sender: Any) {
        if counter > 0 {
            counter -= 1
            scoreCounter.text = "Значение счетчика: \(counter)"
            consoleText.text += "\n [\(Date.now)]: значение изменено -1"
        } else {
            consoleText.text += "\n [\(Date.now)]: попытка уменьшить значение счётчика ниже 0"
        }
    }
    
    @IBAction private func nullCounter(_ sender: Any) {
        counter = 0
        scoreCounter.text = "Значение счетчика: \(counter)"
        consoleText.text += "\n [\(Date.now)]: значение сброшено"
    }
}

