//
//  ViewModifiable.swift
//  Viewtilities
//
//  Created by Gary Tokman on 1/19/19.
//

public protocol ViewModifiable {
    func add(_ modifier: ViewModifier...)
}

public extension ViewModifiable where Self: UIView {

    /// Adds a `ViewModifier` to a view
    ///
    /// - Parameter modifier: A view modifier
    func add(_ modifiers: ViewModifier...) {
        modifiers.forEach(add(_:))
    }

    internal func add(_ modifier: ViewModifier) {
        switch modifier {
        case let .shadow(type):
            shadow(ofType: type)
        case let .cornerRadius(type):
            round(ofType: type)
        case let .border(type):
            border(ofType: type)
        case let .background(color, state):
            guard let self = self as? UIButton else {
                assertionFailure("Setting a background with a state is only available for UIButtons")
                return
            }
            self.background(color: color, for: state)
        }
    }
}
