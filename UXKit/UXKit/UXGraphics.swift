//
//  UXGraphics.swift
//  UXKit
//
//  Created by Alsey Coleman Miller on 2/19/15.
//  Copyright (c) 2015 ColemanCDA. All rights reserved.
//

import Foundation
import CoreGraphics

public func UXGraphicsGetCurrentContext() -> CGContextRef {

    #if os(iOS)
    return UIGraphicsGetCurrentContext()
    #endif
    
    #if os(OSX)
    return NSGraphicsContext.currentContext()!.CGContext as CGContextRef
    #endif
}