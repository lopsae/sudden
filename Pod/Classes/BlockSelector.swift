//
//  Copyright © 2016 Lopsae.
//

import Foundation

public typealias EmptyBlockType = () -> Void

public class BlockSelector {

	var block: EmptyBlockType?


	public init(block: EmptyBlockType?) {
		self.block = block
	}


	public convenience init() {
		self.init(block: nil)
	}


	@objc
	func performBlock() {
		guard let block = block else {
			return
		}
		block()
	}


	public func selector() -> Selector {
		return "performBlock"
	}

}

