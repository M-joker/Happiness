//
//  FaceView.swift
//  Happiness
//
//  Created by 章敏杰 on 15/12/26.
//  Copyright © 2015年 zmj. All rights reserved.
//

import UIKit

class FaceView: UIView
{
    var lineWidth: CGFloat = 3 { didSet {setNeedsDisplay() } }
    var color:UIColor = UIColor.blueColor() { didSet {setNeedsDisplay() } }
    
    
    var faceCenter: CGPoint {
        return convertPoint(center, fromView: superview)
    }
    var faceRadius: CGFloat {
        return min(bounds.size.width, bounds.size.height) / 2 * 0.9
    }
    override func drawRect(rect: CGRect)
    {
        let facePath = UIBezierPath(arcCenter: faceCenter, radius: faceRadius, startAngle: 0, endAngle: CGFloat (2*M_PI), clockwise: true)
        facePath.lineWidth = lineWidth
        color.set()
        facePath.stroke()
    }
}
