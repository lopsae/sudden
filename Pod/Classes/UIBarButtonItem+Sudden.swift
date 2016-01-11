//
//  Copyright © 2016 Lopsae.
//

import UIKit

extension UIBarButtonItem {
	convenience init(title: String, style: UIBarButtonItemStyle, action: VoidClosure) {
		self.init()
		self.title = title
		self.style = style

		let closure = ClosureSelector(closure: action)
		WeakKeeper.keep(closure, owner: self)
		self.target = closure
		self.action = closure.selector()
	}
}