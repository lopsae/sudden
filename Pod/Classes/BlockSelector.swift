//
//  Copyright © 2016 Lopsae.
//

import Foundation

typealias EmptyBlockType = () -> Void

class BlockSelector {

	var block: EmptyBlockType?

	init(block: EmptyBlockType?) {
		self.block = block
	}


	convenience init() {
		self.init(block: nil)
	}


	@objc
	func performBlock() {
		guard let block = block else {
			return
		}
		block()
	}


	func selector() -> Selector {
		return "performBlock"
	}

}

