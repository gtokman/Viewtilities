//
//  ViewModifiers.swift
//  Viewtilities
//
//  Created by Gary Tokman on 1/19/19.
//

import Foundation

/// Modifies a view
///
/// - shadow: Adds a shadow
/// - round: Adds a corner radius
/// - border: Adds a border
public enum ViewModifier {
    case shadow(ShadowType)
    case cornerRadius(CornerType)
    case border(BorderType)
    case background(color: UIColor, state: UIControl.State)
}
