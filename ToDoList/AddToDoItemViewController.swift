//
//  AddToDoItemViewController.swift
//  ToDoList
//
//  Created by Usman Rana on 11/08/16.
//  Copyright (c) 2016 Usman Rana. All rights reserved.
//

import UIKit

class AddToDoItemViewController: UIViewController {
	@IBOutlet weak var cancelButton: UIBarButtonItem!
	@IBOutlet weak var saveButton: UIBarButtonItem!
	@IBOutlet weak var nameTextField: UITextField!
	
	var stateController: StateController?
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		guard let tappedButton = sender as? UIBarButtonItem, tappedButton != cancelButton else {
			return;
		}
		guard let text = nameTextField.text else {
			return
		}
		let todoItem = ToDoItem(name: text, completed: false, creationDate: Date())
		stateController?.addItem(todoItem)
	}
	
}
