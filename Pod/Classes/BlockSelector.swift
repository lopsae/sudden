//
//  Copyright © 2016 Lopsae.
//

import Foundation

public typealias VoidClosure = () -> Void

public class BlockSelector {

	var closure: VoidClosure?


	public init(closure: VoidClosure?) {
		self.closure = closure
	}


	public convenience init() {
		self.init(closure: nil)
	}


	@objc
	func performClosure() {
		guard let closure = closure else {
			return
		}
		closure()
	}


	public func selector() -> Selector {
		return "performClosure"
	}

}

