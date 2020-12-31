//
//  Composed.swift
//  MemoryLeakUnitTest
//
//  Created by Ali Jawad on 29/12/2020.
//

import Foundation

class Service {
    var withMemoryLeak: AnyObject?
    
    init(wml: AnyObject?) {
        withMemoryLeak = wml
        
    }
}
