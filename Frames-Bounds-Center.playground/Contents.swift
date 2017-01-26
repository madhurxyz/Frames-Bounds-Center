//: Playground - noun: a place where people can play

import UIKit

let superFrame = CGRect(x: 0, y: 0, width: 750, height: 1334)
let superView = UIView(frame: superFrame)
superView.backgroundColor = .white
let redView = UIView(frame: superView.bounds.insetBy(dx: 20, dy: 20))
redView.backgroundColor = .red
superView.addSubview(redView)
let superView2 = UIView(frame: superFrame)
superView2.backgroundColor = .white

for j in 0..<8 {
    let rowFrame = CGRect(x: 0, y:CGFloat((superFrame.width/8)*CGFloat(j)), width: superFrame.width, height: superFrame.width/8)
    let rowView = UIView(frame: rowFrame)
    for i in 0..<8 {
        let checkFrame = CGRect(x:CGFloat((superFrame.width/8)*CGFloat(i)), y:0, width: superFrame.width/8, height: superFrame.width/8)
        let checkView = UIView(frame: checkFrame)
        if (i%2) == 0 {
            checkView.backgroundColor = .black
        } else {
            checkView.backgroundColor = .white
        }
        rowView.addSubview(checkView)
    }
    superView2.addSubview(rowView)
}