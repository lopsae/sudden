//
//  Copyright © 2016 Lopsae.
//


/// WeakKeeper keeps alive an object —the keepsake— as long as another object
/// —the owner— still exists.
///
/// The intended use is to keep alive inline crated objects that are used as
/// targets —in a target-selector pattern— or as delegates. Since both targets
/// and delegates are kept as weak reference inline objects would otherwise
/// expire after their context expires.
///
/// TODO:
/// WeakKeeper can be instructed to clean all keepsakes for which their weak
/// references have expired, leaving the keepsake free to be disposed.
public class WeakKeeper {

	static private var keepers = [Keeper]()


	public static func keep(keepsake: AnyObject, owner: AnyObject?) {
		let keeper = Keeper(keepsake: keepsake, owner: owner)
		keepers.append(keeper)
	}


	class Keeper {
		var keepsake: AnyObject
		weak var owner: AnyObject?

		init(keepsake: AnyObject, owner: AnyObject?) {
			self.keepsake = keepsake
			self.owner = owner
		}
	}
}


