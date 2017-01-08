//
//  StateController.swift
//  ToDoList
//
//  Created by Usman Rana on 12/08/15.
//  Copyright (c) 2016 Usman Rana. All rights reserved.
//

import Foundation

class StateController {
	static let itemsFilePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first! + "/items.txt"
	
	fileprivate(set) var items: [ToDoItem] = {
		if let items = NSKeyedUnarchiver.unarchiveObject(withFile: itemsFilePath) as? [ToDoItem] {
			return items
		} else {
			return [ToDoItem]()
		}
	}()

	func addItem(_ item: ToDoItem) {
		items.append(item)
	}
	
	func save() {
		NSKeyedArchiver.archiveRootObject(self.items, toFile: StateController.itemsFilePath)
	}
}
