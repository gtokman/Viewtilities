//
//  Borderable.swift
//  Viewtilities
//
//  Created by Gary Tokman on 1/19/19.
//

import Foundation

protocol Borderable {}

internal extension Borderable where Self: UIView {

    /// Adds a border to a views layer
    ///
    /// - Parameter borderType: A type that represents a border
    func border(ofType borderType: BorderType = .default) {
        guard case let .custom(color, width) = borderType else {
            assertionFailure("Could not set the border. Faild to deconstruct: \(borderType)")
            return
        }
        layer.borderColor = color.cgColor
        layer.borderWidth = width
    }
}

