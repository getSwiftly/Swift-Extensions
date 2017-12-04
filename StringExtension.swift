//
//  StringExtension.swift
//
//  Created by Muhammad Shabbir on 8/17/17.
//  Copyright © 2017 Muhammad Shabbir. All rights reserved.
//

import Foundation

extension String {
    
    subscript (i: Int)  -> Character {
        return self[index(startIndex, offsetBy: i)]
    }
    
    var isNumeric : Bool {
        get {
            return Double(self) != nil
        }
    }
    
    subscript (r: Range<Int>) -> String {
        let start = index(startIndex, offsetBy: r.lowerBound)
        let end = index(startIndex, offsetBy: r.upperBound)
        return self[Range(start ..< end)]
    }
    
    var utf8Array: [UInt8] {
        return Array(utf8)
    }
    
    

}
