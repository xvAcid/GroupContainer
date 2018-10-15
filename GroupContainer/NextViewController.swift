//
//  NextViewController.swift
//  GroupContainer
//
//  Created by xvAcid on 15/10/2018.
//  Copyright © 2018 WSG4FUN. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    private var userFirstName: String = ""
    private var userSecondName: String = ""
    private var userData: [String] = []
    private var age: Int = 0
    
    @IBOutlet private weak var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.text = "User Name: \(userFirstName) \(userSecondName)\nAge: \(age)\nData:\n"
        for data in userData {
            textView.text += "\(data)\n"
        }
    }
    
    func configure(groupContainer: GroupContainer) {
        userFirstName   = groupContainer.get("firstName") ?? ""
        userSecondName  = groupContainer.get("secondName") ?? ""
        userData        = groupContainer.get() ?? []
        age             = groupContainer.get() ?? 0
    }
}
