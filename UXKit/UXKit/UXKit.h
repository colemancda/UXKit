//
//  UXKit.h
//  UXKit
//
//  Created by Alsey Coleman Miller on 2/19/15.
//  Copyright (c) 2015 ColemanCDA. All rights reserved.
//

@import Foundation;

#if TARGET_OS_IPHONE
@import UIKit;
#endif
#if !TARGET_OS_IPHONE && TARGET_OS_MAC
@import AppKit;
#endif

//! Project version number for UXKit.
FOUNDATION_EXPORT double UXKitVersionNumber;

//! Project version string for UXKit.
FOUNDATION_EXPORT const unsigned char UXKitVersionString[];



