//
//  ViewController.swift
//  Counter
//
//  Created by Andrey Nobu on 05.10.2024.
//

import UIKit
class ViewController: UIViewController {

    @IBOutlet weak var consoleText: UITextView!
    @IBOutlet weak var nullifierButton: UIButton!
    @IBOutlet weak var scoreCounter: UILabel!
    var counter = 0
    
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        consoleText.text = "История изменений:"
        // Do any additional setup after loading the view.
    }
    @IBAction func plusCounter(_ sender: Any) {
        counter += 1
        scoreCounter.text = "Значение счетчика: \(counter)"
        consoleText.text += "\n [\(Date.now)]: значение изменено +1"
    }
    
    @IBAction func minusCounter(_ sender: Any) {
        if counter > 0 {
            counter -= 1
            scoreCounter.text = "Значение счетчика: \(counter)"
            consoleText.text += "\n [\(Date.now)]: значение изменено -1"
        }else{
            consoleText.text += "\n [\(Date.now)]: попытка уменьшить значение счётчика ниже 0"
        }
    }
    
    @IBAction func nullCounter(_ sender: Any) {
        counter = 0
        scoreCounter.text = "Значение счетчика: \(counter)"
        consoleText.text += "\n [\(Date.now)]: значение сброшено"
    }
}

