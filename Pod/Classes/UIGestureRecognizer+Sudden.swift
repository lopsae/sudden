//
//  Copyright © 2016 Lopsae.
//


extension UIGestureRecognizer {
	convenience init(action: VoidClosure) {
		self.init()
		addAction(action)
	}


	func addAction(action: VoidClosure) {
		let closure = BlockSelector(closure: action)
		WeakKeeper.keep(closure, weakObject: self)
		addTarget(closure, action: closure.selector())
	}
	
}

