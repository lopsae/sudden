//
//  Copyright © 2016 Lopsae.
//

import UIKit

extension UIBarButtonItem {
	convenience init(title: String, style: UIBarButtonItemStyle, action: EmptyBlockType) {
		self.init()
		self.title = title
		self.style = style

		let block = BlockSelector(block: action)
		WeakKeeper.keep(block, weakObject: self)
		self.target = block
		self.action = block.selector()
	}
}