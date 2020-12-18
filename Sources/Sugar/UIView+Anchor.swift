//
//  UIView+Anchor.swift
//  Sugar
//
//  Created by Martin Lasek on 17.12.20.
//  Copyright © 2020 Martin Lasek. All rights reserved.
//

#if canImport(UIKit)
import UIKit

extension UIView {
  func anchor(
    top: NSLayoutYAxisAnchor? = nil,
    leading: NSLayoutXAxisAnchor? = nil,
    bottom: NSLayoutYAxisAnchor? = nil,
    trailing: NSLayoutXAxisAnchor? = nil,
    centerY: NSLayoutYAxisAnchor? = nil,
    centerX: NSLayoutXAxisAnchor? = nil,
    padding: UIEdgeInsets = .zero,
    size: CGSize = .zero
  ) {

    translatesAutoresizingMaskIntoConstraints = false

    var constraints: [NSLayoutConstraint] = []

    if let top = top {
      constraints.append(topAnchor.constraint(equalTo: top, constant: padding.top))
    }

    if let leading = leading {
      constraints.append(leadingAnchor.constraint(equalTo: leading, constant: padding.left))
    }

    if let bottom = bottom {
      constraints.append(bottomAnchor.constraint(equalTo: bottom, constant: padding.bottom))
    }

    if let trailing = trailing {
      constraints.append(trailingAnchor.constraint(equalTo: trailing, constant: padding.right))
    }

    if let centerX = centerX {
      constraints.append(centerXAnchor.constraint(equalTo: centerX))
    }

    if let centerY = centerY {
      constraints.append(centerYAnchor.constraint(equalTo: centerY))
    }

    if size.width != 0 {
      constraints.append(widthAnchor.constraint(equalToConstant: size.width))
    }

    if size.height != 0 {
      constraints.append(heightAnchor.constraint(equalToConstant: size.height))
    }

    NSLayoutConstraint.activate(constraints)
  }
}
#endif
