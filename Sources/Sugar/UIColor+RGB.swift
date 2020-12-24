//
//  File.swift
//  
//
//  Created by Martin Lasek on 24.12.20.
//

#if canImport(UIKit)
import UIKit

extension UIColor {
  convenience init(r: CGFloat, g: CGFloat, b: CGFloat, alpha: CGFloat? = nil) {
    self.init(red: r/255, green: g/255, blue: b/255, alpha: alpha ?? 1.0)
  }
}

#endif

