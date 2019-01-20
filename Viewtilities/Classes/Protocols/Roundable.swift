//
//  Roundable.swift
//  Viewtilities
//
//  Created by Gary Tokman on 1/19/19.
//

protocol Roundable {}

internal extension Roundable where Self: UIView {

    /// Adds a corner radius to a view layer
    ///
    /// - Parameter cornerType: A type that represents a corner radius
    func round(ofType cornerType: CornerType = .default) {
        guard case let .custom(corners, cornerRadius) = cornerType else {
            assertionFailure("Could not set the corner radius. Faild to deconstruct: \(cornerType)")
            return
        }
        layer.cornerRadius = cornerRadius
        layer.maskedCorners = CACornerMask(corners.map { $0.cornerMask })
    }
}

