//
//  Copyright © 2016 Lopsae.
//


extension UIGestureRecognizer {
	convenience init(action: EmptyBlockType) {
		self.init()
		addAction(action)
	}


	func addAction(action: EmptyBlockType) {
		let block = BlockSelector(block: action)
		WeakKeeper.keep(block, weakObject: self)
		addTarget(block, action: block.selector())
	}
	
}

