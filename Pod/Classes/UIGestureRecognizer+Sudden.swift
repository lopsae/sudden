//
//  WeakKeeper.swift
//  abrupt
//
//  Created by Maic Lopez on 12/10/15.
//  Copyright © 2015 Maic Lopez. All rights reserved.
//


extension UIGestureRecognizer {
	convenience init(action: EmptyBlockType) {
		self.init()
		addAction(action)
	}


	func addAction(action: EmptyBlockType) {
		let block = BlockSelector(block: action)
		WeakKeeper.keep(block, weakObject: self)
		addTarget(block, action: block.selector())
	}
	
}

