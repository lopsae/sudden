//
//  Copyright © 2016 Lopsae.
//

import UIKit

public extension UIBarButtonItem {

	public convenience init(title: String, style: UIBarButtonItemStyle, action: VoidClosure) {
		let closure = ClosureSelector(closure: action)
		self.init(title: title,
			style: style,
			target: closure,
			action: closure.selector()
		)
		WeakKeeper.keep(closure, owner: self)
	}

}