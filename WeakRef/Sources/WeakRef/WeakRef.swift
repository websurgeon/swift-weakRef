//
//  Created by Peter Barclay. Copyright (c) 2018 . All rights reserved.
//

import Foundation

public final class WeakRef<T: AnyObject> {
    public weak var object: T?
    
    public init(_ object: T) {
        self.object = object
    }
}
