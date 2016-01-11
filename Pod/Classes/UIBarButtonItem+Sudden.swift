//
//  Copyright © 2016 Lopsae.
//

import UIKit

extension UIBarButtonItem {
	convenience init(title: String, style: UIBarButtonItemStyle, action: VoidClosure) {
		self.init()
		self.title = title
		self.style = style

		let closure = BlockSelector(closure: action)
		WeakKeeper.keep(closure, weakObject: self)
		self.target = closure
		self.action = closure.selector()
	}
}