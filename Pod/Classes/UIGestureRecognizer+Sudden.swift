//
//  Copyright © 2016 Lopsae.
//


extension UIGestureRecognizer {
	convenience init(action: VoidClosure) {
		self.init()
		addAction(action)
	}


	func addAction(action: VoidClosure) {
		let closure = ClosureSelector(closure: action)
		WeakKeeper.keep(closure, owner: self)
		addTarget(closure, action: closure.selector())
	}
	
}

