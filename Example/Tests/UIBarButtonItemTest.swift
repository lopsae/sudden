//
//  Copyright © 2016 LopSae.
//

import Quick
import Nimble
import Sudden

class UIBarButtonItemTest: QuickSpec {

	var storedString = ""


    override func spec() {
        describe("Button item build with constructor") {

            it("can trigger ") {
				self.storedString = ""
				let barButton = UIBarButtonItem(barButtonSystemItem: .Done) {
					[unowned self] in
					self.storedString = "barButtonSystemItem"
				}
				barButton.target?.performSelector(barButton.action)
//				self.storedString = "barButtonSystemItems"

                expect(self.storedString) == "barButtonSystemItem"
            }

        }
    }
}
