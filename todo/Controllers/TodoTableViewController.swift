//
//  TodoTableViewController.swift
//  todo
//
//  Created by tati on 24/10/2018.
//  Copyright © 2018 tati. All rights reserved.
//

import UIKit

class TodoTableViewController: UITableViewController {

    var todos : [ToDo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let todo1 = ToDo()
        todo1.name = "my first task"
        todo1.important = true
        
        let todo2 = ToDo()
        todo2.name = "my second task"
        todo2.important = false
        
        todos = [todo1, todo2]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // How many rows?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return todos.count
    }
    
    // What goes in each row?
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = todos[indexPath.row].name

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toCompleteVc ", sender: todos[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let createVC = segue.destination as? CreateTodoViewController {
            createVC.todoTableVC = self
        }
        
        if let completeVC = segue.destination as? CompleteViewController {
            if let todo = sender as? ToDo {
                completeVC.todo = todo
            }
        }
    }
}
