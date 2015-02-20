//
//  UXColor.swift
//  UXKit
//
//  Created by Alsey Coleman Miller on 2/19/15.
//  Copyright (c) 2015 ColemanCDA. All rights reserved.
//

import Foundation

#if os(OSX)
    public typealias UXColor = NSColor
#elseif os(iOS)
    public typealias UXColor = UIColor
#endif
