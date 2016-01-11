//
//  Copyright © 2016 Lopsae.
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

