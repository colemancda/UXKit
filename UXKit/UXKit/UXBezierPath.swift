//
//  UXBezierPath.swift
//  UXKit
//
//  Created by Alsey Coleman Miller on 2/20/15.
//  Copyright (c) 2015 ColemanCDA. All rights reserved.
//

import Foundation

#if os(OSX)
    public typealias UXBezierPath = NSBezierPath
#elseif os(iOS)
    public typealias UXBezierPath = UIBezierPath
#endif

#if os(OSX)
public extension NSBezierPath {
    
    public convenience init(roundedRect rect: CGRect, cornerRadius: CGFloat) {
        
        self.init(roundedRect: rect, xRadius: cornerRadius, yRadius: cornerRadius)
    }
}
    
#endif
