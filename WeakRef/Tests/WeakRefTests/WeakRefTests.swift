//
//  Created by Peter Barclay. Copyright (c) 2018 . All rights reserved.
//

import Foundation
import XCTest
import WeakRef

class WeakRefTests: XCTestCase {

    func test_object_shouldHoldReferenceToGivenObject() {
        let object = CustomObject()
        let sut = WeakRef(object)
        
        XCTAssertEqual(ObjectIdentifier(sut.object!), ObjectIdentifier(object))
    }
    
    func test_object_shouldBeWeakReferenceToGivenObject() {
        var strongRef: CustomObject? = CustomObject()
        let sut = WeakRef(strongRef!)

        strongRef = nil

        XCTAssertNil(sut.object)
    }
}

private class CustomObject {}
