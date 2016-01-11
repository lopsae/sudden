//
//  BlockSelector.swift
//  abrupt
//
//  Created by Maic Lopez on 12/4/15.
//  Copyright © 2015 Maic Lopez. All rights reserved.
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