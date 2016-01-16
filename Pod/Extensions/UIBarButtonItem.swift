//
//  Copyright © 2016 LopSae.
//

import UIKit


public extension UIBarButtonItem {

	public convenience init(title: String,
		style: UIBarButtonItemStyle,
		action: VoidClosure
	) {
		let closure = ClosureSelector(closure: action)
		self.init(title: title,
			style: style,
			target: closure,
			action: closure.selector()
		)
		WeakKeeper.keep(closure, owner: self)
	}


	convenience init(barButtonSystemItem: UIBarButtonSystemItem,
		action: VoidClosure
	) {
		let closure = ClosureSelector(closure: action)
		self.init(barButtonSystemItem: barButtonSystemItem,
			target: closure,
			action: closure.selector()
		)
		WeakKeeper.keep(closure, owner: self)
	}


	convenience init(image: UIImage?,
		style: UIBarButtonItemStyle,
		action: VoidClosure
	) {
		let closure = ClosureSelector(closure: action)
		self.init(image: image,
			style: style,
			target: closure,
			action: closure.selector()
		)
		WeakKeeper.keep(closure, owner: self)
	}


	convenience init(image: UIImage?,
		landscapeImagePhone: UIImage?,
		style: UIBarButtonItemStyle,
		action: VoidClosure
	) {
		let closure = ClosureSelector(closure: action)
		self.init(image: image,
			landscapeImagePhone: landscapeImagePhone,
			style: style,
			target: closure,
			action: closure.selector()
		)
		WeakKeeper.keep(closure, owner: self)
	}

}