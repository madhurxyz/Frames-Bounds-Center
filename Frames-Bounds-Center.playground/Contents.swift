//: Playground - noun: a place where people can play

import UIKit

let superFrame = CGRect(x: 0, y: 0, width: 750, height: 1334)
let superView = UIView(frame: superFrame)
superView.backgroundColor = .white
let redView = UIView(frame: superView.bounds.insetBy(dx: 20, dy: 20))
redView.backgroundColor = .red
superView.addSubview(redView)
