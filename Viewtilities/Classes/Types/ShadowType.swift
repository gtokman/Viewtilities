//
//  ShadowType.swift
//  Pods-Viewtilities_Example
//
//  Created by Gary Tokman on 1/19/19.
//

import Foundation

/// Represents a shadow
public enum ShadowType {
    /// Default shadow type with an yOffset of 2, radius of 5, opacity of 0.25, color of black
    public static let `default` = ShadowType.custom(offset: .init(width: 0, height: 2), radius: 5, opacity: 0.25, color: .black)

    /// A custom shadow type
    case custom(offset: CGSize, radius: CGFloat, opacity: CGFloat, color: UIColor)
}
