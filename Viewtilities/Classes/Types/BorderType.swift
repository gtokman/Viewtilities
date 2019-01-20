//
//  BorderType.swift
//  Pods-Viewtilities_Example
//
//  Created by Gary Tokman on 1/19/19.
//

import Foundation

/// Represents a border
public enum BorderType {
    /// A default border with a color of black and a width of 1
    public static let `default` = BorderType.custom(color: .black, width: 1)

    /// A custom border
    case custom(color: UIColor, width: CGFloat)
}
