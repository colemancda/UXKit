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

