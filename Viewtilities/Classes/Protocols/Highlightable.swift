//
//  Backgroundable.swift
//  Viewtilities
//
//  Created by Gary Tokman on 1/19/19.
//

protocol Highlightable {}

internal extension Highlightable where Self: UIButton {


    /// Set a background color for a specific button state
    ///
    /// - Parameters:
    ///   - color: The color for the background
    ///   - state: The button state
    func background(color: UIColor, for state: UIControl.State = .highlighted) {
        clipsToBounds = true
        UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        context.setFillColor(color.cgColor)
        context.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
        let colorImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        setBackgroundImage(colorImage, for: state)
    }
}
