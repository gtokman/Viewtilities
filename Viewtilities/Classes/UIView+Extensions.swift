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
    func shadow(offset: CGSize = .zero, radius: CGFloat = 1, opacity: Float = 1, color: UIColor = .black) {
        layer.shadowOffset = offset
        layer.shadowRadius = radius
        layer.shadowOpacity = opacity
        layer.shadowColor = color.cgColor
    }
}

public extension Roundable where Self: UIView {
    func round(corners: [Corner] = [.all], to cornerRadius: CGFloat) {
        layer.cornerRadius = cornerRadius
        layer.maskedCorners = CACornerMask(corners.map { $0.cornerMask })
    }
}

public extension Borderable where Self: UIView {
    func border(color: UIColor = .black, width: CGFloat = 1) {
        layer.borderColor = color.cgColor
        layer.borderWidth = width
    }
}

extension UIView: Roundable, Shadowable, Borderable {}
