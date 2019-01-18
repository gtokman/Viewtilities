//
//  UIView+Extensions.swift
//  Pods-Viewtilities_Example
//
//  Created by Gary Tokman on 1/18/19.
//

public protocol Roundable {}
public protocol Shadowable {}
public protocol Borderable {}

public extension Shadowable where Self: UIView {

    /// Adds to the views layer
    ///
    /// - parameter offset: The offset (in points) of the layer’s shadow.
    /// - parameter radius: The blur radius (in points) used to render the layer’s shadow.
    /// - parameter opacity: The opacity of the layer’s shadow.
    /// - parameter color: The color of the layer’s shadow.
    ///
    func shadow(offset: CGSize = .zero, radius: CGFloat = 1, opacity: Float = 1, color: UIColor = .black) {
        layer.shadowOffset = offset
        layer.shadowRadius = radius
        layer.shadowOpacity = opacity
        layer.shadowColor = color.cgColor
    }
}

public extension Roundable where Self: UIView {
    /// Rounds the views layer
    ///
    /// - parameter corners: `Corners` to round
    /// - parameter cornerRadius: The radius to use when drawing rounded corners for the layer
    ///
    func round(corners: [Corner] = [.all], to cornerRadius: CGFloat) {
        layer.cornerRadius = cornerRadius
        layer.maskedCorners = CACornerMask(corners.map { $0.cornerMask })
    }
}

public extension Borderable where Self: UIView {
    /// Add border to views layer
    ///
    /// - parameter color: color of the border
    /// - parameter width: The width of the layer’s border
    ///
    func border(color: UIColor = .black, width: CGFloat = 1) {
        layer.borderColor = color.cgColor
        layer.borderWidth = width
    }
}

extension UIView: Roundable, Shadowable, Borderable {}
