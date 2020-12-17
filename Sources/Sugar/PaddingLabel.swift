//
//  PaddingLabel.swift
//  Sugar
//
//  Created by Martin Lasek on 17.12.20.
//  Copyright © 2020 Martin Lasek. All rights reserved.
//
#if canImport(UIKit)
import UIKit

// A Label that allows to add padding
final class PaddingLabel: UILabel {
  private var top: CGFloat
  private var bottom: CGFloat
  private var left: CGFloat
  private var right: CGFloat

  init(padding: UIEdgeInsets, hasUnderline: Bool = false) {
    super.init(frame: .zero)

    self.top = padding.top
    self.left = padding.left
    self.bottom = padding.bottom
    self.right = padding.right
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func drawText(in rect: CGRect) {
    let insets = UIEdgeInsets.init(top: top, left: left, bottom: bottom, right: right)
    super.drawText(in: rect.inset(by: insets))
  }

  override var intrinsicContentSize: CGSize {
    let size = super.intrinsicContentSize
    return CGSize(width: size.width + left + right, height: size.height + top + bottom)
  }
}
#endif
