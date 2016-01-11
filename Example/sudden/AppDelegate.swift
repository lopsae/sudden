//
//  AppDelegate.swift
//  sudden
//
//  Created by Maic Lopez Saenz on 01/10/2016.
//  Copyright (c) 2016 Maic Lopez Saenz. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

	var viewController: UIViewController!

    func application(application: UIApplication,
		didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?
	) -> Bool {
		window = UIWindow(frame: UIScreen.mainScreen().bounds);
		window!.tintColor = UIColor.redColor()
		window!.backgroundColor = UIColor.darkGrayColor()

		let rightBarButton = UIBarButtonItem(
			title: "demo",
			style: .Plain,
			target: self,
			action: "changeViewColor"
		)

		viewController = UIViewController()
		viewController.navigationItem.title = "sudden"
		viewController.view.backgroundColor = UIColor.grayColor()
		viewController.navigationItem.rightBarButtonItem = rightBarButton

		let navController = UINavigationController()
		navController.viewControllers = [viewController]

		window!.rootViewController = navController;
		window!.makeKeyAndVisible()

		return true
    }


	func changeViewColor() {
		viewController.view.backgroundColor = UIColor.greenColor()
	}
}

