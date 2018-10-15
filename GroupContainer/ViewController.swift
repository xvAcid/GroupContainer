//
//  ViewController.swift
//  GroupContainer
//
//  Created by xvAcid on 15/10/2018.
//  Copyright © 2018 WSG4FUN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var firstNameTextField: UITextField!
    @IBOutlet private weak var secondNameTextField: UITextField!
    @IBOutlet private weak var ageTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstNameTextField.text = "Test"
        secondNameTextField.text = "User"
        ageTextField.text = "30"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let nextViewController = segue.destination as? NextViewController else { return }
        let groupContainer = GroupContainer()
        var randomArray: [String] = []
        for _ in 0..<10 {
            randomArray.append("\(arc4random() % 100000)")
        }
        
        groupContainer.add(firstNameTextField.text, "firstName")
        groupContainer.add(secondNameTextField.text, "secondName")
        groupContainer.add(Int(ageTextField.text ?? "0") ?? 0)
        groupContainer.add(randomArray)
        
        nextViewController.configure(groupContainer: groupContainer)
    }

}

