//
//  ViewController.swift
//  Fitness App - V1
//
//  Created by Sumana Sudarshan on 10/15/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var caloriesLabel: UILabel!
    
    @IBOutlet weak var textLabel: UILabel!
    let colors:[UIColor] = [.red, .orange,.yellow,.green]
    let calories = [33,45,105,95]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender.tag == 1000{
            caloriesLabel.text = ""
        }
        else {
            print(sender.tag)
            print(sender.titleLabel!.text!)
            caloriesLabel.textColor = colors[sender.tag]
            caloriesLabel.text = String(calories[sender.tag])+" Calories"
        }
        
    }
    
    @IBAction func enterButtonPressed(_ sender: UIButton) {
        textLabel.text = "Hi \(inputTextField.text!) Welcome to my App"
    }
}

