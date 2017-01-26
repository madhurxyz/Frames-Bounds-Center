//: Playground - noun: a place where people can play

import UIKit

//Challenge 1: Create Margins with Bounds
let superFrame = CGRect(x: 0, y: 0, width: 750, height: 1334)
let superView = UIView(frame: superFrame)
superView.backgroundColor = .white
let redView = UIView(frame: superView.bounds.insetBy(dx: 20, dy: 20))
redView.backgroundColor = .red
superView.addSubview(redView)


//Challenge 2: Checkered Board
let superView2 = UIView(frame: superFrame)
superView2.backgroundColor = .white

for j in 0..<8 {
    let rowFrame = CGRect(x: 0, y:CGFloat((superFrame.width/8)*CGFloat(j)), width: superFrame.width, height: superFrame.width/8)
    let rowView = UIView(frame: rowFrame)
    for i in 0..<8 {
        let checkFrame = CGRect(x:CGFloat((superFrame.width/8)*CGFloat(i)), y:0, width: superFrame.width/8, height: superFrame.width/8)
        let checkView = UIView(frame: checkFrame)
        if (j%2) == 0{
            if (i%2) == 0 {
                checkView.backgroundColor = .black
            } else {
                checkView.backgroundColor = .white
            }
        } else {
            if (i%2) == 0 {
                checkView.backgroundColor = .white
            } else {
                checkView.backgroundColor = .black
            }
        }
        rowView.addSubview(checkView)
    }
    superView2.addSubview(rowView)
}

//Challenge 3: Rainbow Rows
let superView3 = UIView(frame: superFrame)
superView3.backgroundColor = .white

let red1 = UIColor(red: 237.0/255.0, green: 71.0/255.0, blue: 46.0/255.0, alpha: 1.0)
let orange = UIColor(red: 240.0/255.0, green: 127.0/255.0, blue: 46.0/255.0, alpha: 1.0)
let yellow = UIColor(red: 243.0/255.0, green: 235.0/255.0, blue: 53.0/255.0, alpha: 1.0)
let lightGreen = UIColor(red: 147.0/255.0, green: 200.0/255.0, blue: 64.0/255.0, alpha: 1.0)
let green = UIColor(red: 108.0/255.0, green: 190.0/255.0, blue: 69.0/255.0, alpha: 1.0)
let aqua = UIColor(red: 111.0/255.0, green: 192.0/255.0, blue: 107.0/255.0, alpha: 1.0)
let blue = UIColor(red: 66.0/255.0, green: 120.0/255.0, blue: 189.0/255.0, alpha: 1.0)
let darkBlue = UIColor(red: 57.0/255.0, green: 84.0/255.0, blue: 164.0/255.0, alpha: 1.0)
let purple = UIColor(red: 106.0/255.0, green: 82.0/255.0, blue: 162.0/255.0, alpha: 1.0)
let pink = UIColor(red: 205.0/255.0, green: 75.0/255.0, blue: 155.0/255.0, alpha: 1.0)
let magenta = UIColor(red: 237.0/255.0, green: 74.0/255.0, blue: 88.0/255.0, alpha: 1.0)
let red2 = UIColor(red: 237.0/255.0, green: 71.0/255.0, blue: 46.0/255.0, alpha: 1.0)
let colorArray: [UIColor] = [red1,orange,yellow,lightGreen,green,aqua,blue,darkBlue,purple,pink,magenta,red2]

for j in 0..<12 {
    let rainbowRowFrame = CGRect(x: 0, y:CGFloat((superFrame.height/12)*CGFloat(j)), width: superFrame.width, height: superFrame.height/12)
    let rainbowRowView = UIView(frame: rainbowRowFrame)
    rainbowRowView.backgroundColor = colorArray[j]
    superView.addSubview(rainbowRowView)
}


//Challenge 4: Saturation, Bounds
let superView4 = UIView(frame: superFrame)
superView4.backgroundColor = .white

for i in 0..<7 {
    let satView = UIView(frame: superView.bounds.insetBy(dx: CGFloat(30*CGFloat(i)), dy: CGFloat(30*CGFloat(i))))
    satView.backgroundColor = UIColor(hue: 1.0, saturation: CGFloat(1/CGFloat(i)), brightness: 1.0, alpha: 1.0)
    superView4.addSubview(satView)
}

//Challenge 5: Image Pattern
let superView5 = UIView(frame: superFrame)
let patternImage = UIImage(named: "pattern.png")
superView5.backgroundColor = UIColor(patternImage: patternImage!)
let subView5 = UIView(frame: superView5.bounds.insetBy(dx: 20, dy: 20))
for j in 0..<3 {
    let rowFrame5 = CGRect(x: 0, y: CGFloat((subView5.frame.width/2)*CGFloat(j)), width: subView5.frame.width, height: subView5.frame.width/2)
    let rowView5 = UIView(frame: rowFrame5)
    for i in 0..<2 {
        let subSubFrame5 = CGRect(x: CGFloat((subView5.frame.width/2)*CGFloat(i)), y:0, width: subView5.frame.width/2, height: subView5.frame.width/2)
        let subSubView5 = UIView(frame: subSubFrame5)
        rowView5.addSubview(subSubView5)
        let subSubSubView5 = UIView(frame: subSubView5.bounds.insetBy(dx: 20, dy: 20))
        subSubSubView5.backgroundColor = .black
        subSubView5.addSubview(subSubSubView5)
    }
    subView5.addSubview(rowView5)
}
superView5.addSubview(subView5)





