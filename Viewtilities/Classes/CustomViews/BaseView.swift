//
//  BaseView.swift
//  Viewtilities
//
//  Created by Gary Tokman on 1/19/19.
//

import Foundation

/// A nibless view
public class BaseView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    @available(*, unavailable, message: "Nib initializer is unavailable")
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    /// Add custom view configurations
    public func configure() {}
}
