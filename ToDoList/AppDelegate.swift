//
//  AppDelegate.swift
//  ToDoList
//
//  Created by Usman Rana on 11/08/16.
//  Copyright (c) 2016 Usman Rana. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?
	let stateController = StateController()

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		if let navigationController = window?.rootViewController as? UINavigationController,
			let toDoListTableViewController = navigationController.viewControllers.first as? ToDoListTableViewController {
			toDoListTableViewController.stateController = stateController
		}
		return true
	}

	func applicationWillTerminate(_ application: UIApplication) {
		stateController.save()
	}
	
	func applicationWillResignActive(_ application: UIApplication) {
		stateController.save()
	}
}

