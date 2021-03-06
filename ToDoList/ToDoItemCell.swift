//
//  ToDoItemCell.swift
//  ToDoList
//
//  Created by Usman Rana on 28/08/15.
//  Copyright (c) 2016 Usman Rana. All rights reserved.
//

import UIKit

class ToDoItemCell: UITableViewCell {
	static let identifier = "ToDoItemCell"
	
	var name: String? {
		didSet {
			textLabel?.text = name
		}
	}
	
	var completed: Bool = false {
		didSet {
			if (completed) {
				accessoryType = UITableViewCellAccessoryType.checkmark
			} else {
				accessoryType = UITableViewCellAccessoryType.none;
			}
		}
	}
}
