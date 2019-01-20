//
//  ViewModifiable.swift
//  Viewtilities
//
//  Created by Gary Tokman on 1/19/19.
//

import Foundation

public protocol ViewModifiable {
    func add(_ modifier: ViewModifier)
}

public extension ViewModifiable where Self: UIView {

    /// Adds a `ViewModifier` to a view
    ///
    /// - Parameter modifier: A view modifier
    func add(_ modifier: ViewModifier) {
        switch modifier {
        case let .shadow(type):
            shadow(ofType: type)
        case let .cornerRadius(type):
            round(ofType: type)
        case let .border(type):
            border(ofType: type)
        }
    }
}
