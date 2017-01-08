//
//  ViewController.swift
//  ToDoList
//
//  Created by Usman Rana on 11/08/16.
//  Copyright (c) 2016 Usman Rana. All rights reserved.
//

import UIKit

class ToDoListTableViewController: UITableViewController {
	
	var stateController: StateController?
	var tableViewDataSource: TableViewDataSource?
	var tableViewDelegate: TableViewDelegate?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		if let stateController = stateController {
			tableViewDataSource = TableViewDataSource(tableView: tableView, stateController: stateController)
			tableViewDelegate = TableViewDelegate(tableView: tableView, stateController: stateController)
		}
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		tableView.reloadData()
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let navigationController = segue.destination as? UINavigationController,
			let addToDoItemViewController = navigationController.viewControllers.first as? AddToDoItemViewController {
			addToDoItemViewController.stateController = stateController
		}
	}
	
	@IBAction func unwindToList(_ segue: UIStoryboardSegue) {
		
	}
	
}

