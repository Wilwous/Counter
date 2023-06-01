//
//  ViewController.swift
//  Counter
//
//  Created by Антон Павлов on 30.05.2023.

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var countLabel: UILabel!

    var count: Int = 0 {
        didSet {
            updateCountLabel()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateCountLabel()
    }

    @IBAction func buttonDidTap(_ sender: Any) {
        count += 1
    }

    private func updateCountLabel() {
        countLabel.text = "Значение счетчика: \(count)"
    }
}
