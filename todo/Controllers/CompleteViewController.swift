//
//  CompleteViewController.swift
//  todo
//
//  Created by tati on 26/10/2018.
//  Copyright © 2018 tati. All rights reserved.
//

import UIKit

class CompleteViewController: UIViewController {

    var todo = ToDo()
    
    @IBOutlet weak var nameTodo: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameTodo.text = todo.name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
