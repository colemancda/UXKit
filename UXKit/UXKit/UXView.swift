//
//  UXView.swift
//  UXKit
//
//  Created by Alsey Coleman Miller on 2/19/15.
//  Copyright (c) 2015 ColemanCDA. All rights reserved.
//

import Foundation

#if os(OSX)
public typealias UXView = NSView
#elseif os(iOS)
public typealias UXView = UIView
#endif

public extension UXView {
    
    public var backingLayer: CALayer {
        
        #if os(iOS)
            return self.layer
        #endif
        
        #if os(OSX)
        
            if layer == nil {
                
                self.wantsLayer = true
            }
            
            return self.layer!
        
        #endif
    }
}