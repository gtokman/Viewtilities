//
//  CornerType.swift
//  Pods-Viewtilities_Example
//
//  Created by Gary Tokman on 1/19/19.
//

import Foundation

/// Represents a corner
public enum CornerType {
    /// A default corner type with all corners rounded and a radius of 8
    public static let `default` = CornerType.custom(corners: [.all], radius: 8)

    /// A custom corner type
    case custom(corners: [Corner], radius: CGFloat)
}
