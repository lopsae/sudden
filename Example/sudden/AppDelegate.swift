//
//  Copyright © 2016 Lopsae.
//

import UIKit
import sudden

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

		let closure = ClosureSelector() {
			[unowned self] in
			self.viewController.view.backgroundColor = UIColor.greenColor()
		}

		let rightBarButton = UIBarButtonItem(
			title: "demo",
			style: .Plain,
			target: closure,
			action: closure.selector()
		)
		WeakKeeper.keep(closure, weakObject: rightBarButton)

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


}

