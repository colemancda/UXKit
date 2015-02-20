// Playground - noun: a place where people can play

import UXKit
import XCPlayground

let button = UXButton(frame: UXRect(x: 0, y: 0, width: 100, height: 100))

button.backingLayer.backgroundColor = UXColor.blackColor().CGColor

button
