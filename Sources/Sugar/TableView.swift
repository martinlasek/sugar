//
//  TableView.swift
//  Sugar
//
//  Created by Martin Lasek on 17.12.20.
//  Copyright © 2020 Martin Lasek. All rights reserved.
//

#if canImport(UIKit)
import UIKit

/// A dynamicly growing UITableView
public final class TableView: UITableView {
  public override var contentSize: CGSize {
    didSet { invalidateIntrinsicContentSize() }
  }

  public override var intrinsicContentSize: CGSize {
    layoutIfNeeded()

    // I substract 1 here so that we don't see the rows bottom line of the last element.
    return CGSize(width: UIView.noIntrinsicMetric, height: contentSize.height - 1)
  }
}
#endif
