//
//  CreateTodoViewController.swift
//  todo
//
//  Created by tati on 26/10/2018.
//  Copyright © 2018 tati. All rights reserved.
//

import UIKit

class CreateTodoViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var importantSwtich: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        let newTodo = ToDo()
        newTodo.important = importantSwtich.isOn
        if let name = nameTextField.text {
            newTodo.name = name
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
