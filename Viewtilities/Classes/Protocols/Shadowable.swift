//
//  Shadowable.swift
//  Viewtilities
//
//  Created by Gary Tokman on 1/19/19.
//

protocol Shadowable {}

internal extension Shadowable where Self: UIView {

    /// Adds a shadow to a views layer
    ///
    /// - Parameter shadowType: A type that represents a shadow
    func shadow(ofType shadowType: ShadowType = .default) {
        guard case let .custom(offset, radius, opacity, color) = shadowType else {
            assertionFailure("Could not set the shadow. Failed to deconstruct: \(shadowType)")
            return
        }
        layer.shadowOffset = offset
        layer.shadowRadius = radius
        layer.shadowOpacity = Float(opacity)
        layer.shadowColor = color.cgColor
    }
}
