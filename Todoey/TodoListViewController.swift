//
//  ViewController.swift
//  Todoey
//
//  Created by Daffomac-19 on 11/07/18.
//  Copyright © 2018 aftab. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
   let ItemArray=["aftab","akshay","parminder"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ItemArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
        cell.textLabel?.text=ItemArray[indexPath.row]
       return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else{
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
      tableView.deselectRow(at: indexPath, animated: true)
    }

}

