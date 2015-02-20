//
//  UXImage.swift
//  UXKit
//
//  Created by Alsey Coleman Miller on 2/19/15.
//  Copyright (c) 2015 ColemanCDA. All rights reserved.
//

import Foundation

#if os(OSX)
    public typealias UXImage = NSImage
#elseif os(iOS)
    public typealias UXImage = UIImage
    public typealias UXImageResizingMode = UIImageResizingMode
    public typealias UXImageOrientation = UIImageOrientation
    public typealias UXImageRenderingMode = UIImageRenderingMode
#endif

#if os(OSX)

public enum UXImageOrientation : Int {
    
    case Up // default orientation
    case Down // 180 deg rotation
    case Left // 90 deg CCW
    case Right // 90 deg CW
    case UpMirrored // as above but image mirrored along other axis. horizontal flip
    case DownMirrored // horizontal flip
    case LeftMirrored // vertical flip
    case RightMirrored // vertical flip
}

/* UXImage will implement the resizing mode the fastest way possible while
retaining the desired visual appearance.
Note that if an image's resizable area is one point then UXImageResizingModeTile
is visually indistinguishable from UXImageResizingModeStretch.
*/
public enum UXImageResizingMode : Int {
    
    case Tile
    case Stretch
}

/* Images are created with UXImageRenderingModeAutomatic by default. An image with this mode is interpreted as a template image or an original image based on the context in which it is rendered. For example, navigation bars, tab bars, toolbars, and segmented controls automatically treat their foreground images as templates, while image views and web views treat their images as originals. You can use UXImageRenderingModeAlwaysTemplate to force your image to always be rendered as a template or UXImageRenderingModeAlwaysOriginal to force your image to always be rendered as an original.
*/
public enum UXImageRenderingMode : Int {
    
    case Automatic // Use the default rendering mode for the context where the image is used
    
    case AlwaysOriginal // Always draw the original image, without treating it as a template
    case AlwaysTemplate // Always draw the image as a template image, ignoring its color information
}


public extension NSImage {
        
    public func resizableImage(capInsets: UXEdgeInsets, resizingMode: UXImageResizingMode = UXImageResizingMode.Stretch) -> UXImage {
        
        return self
    }
}
    
#endif
