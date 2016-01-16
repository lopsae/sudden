//
//  Copyright © 2016 LopSae.
//

import UIKit


public extension UIBarButtonItem {

	public convenience init(title: String,
		style: UIBarButtonItemStyle,
		action: VoidClosure
	) {
		self.init(title: title,
			style: style,
			target: nil,
			action: nil
		)
		closure = action
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


	// TODO: document that setting this value to null no-op if the target
	// is not a ClosureSelector
	var closure: VoidClosure? {
		get {
			guard let closureContainer =  target as? ClosureSelector
			else { return nil }
			return closureContainer.closure
		}

		set {
			if newValue == nil {
				if target is ClosureSelector {
					target = nil
					action = nil
				}
			} else {
				let closureContainer = ClosureSelector(closure: newValue)
				WeakKeeper.keep(closureContainer, owner: self)
				target = closureContainer
				action = closureContainer.selector()
			}
		}
	}

}

