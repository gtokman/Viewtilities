//
//  ModifiableView.swift
//  Viewtilities
//
//  Created by Gary Tokman on 1/19/19.
//

/// A genric modifiable view
public class ModifiableView<View: UIView>: BaseView {

    /// Main view to add custom content
    public let contentView = View()

    public convenience init(_ viewModifiers: ViewModifier...) {
        self.init(frame: .zero)
        viewModifiers.forEach(add(_:))
    }

    public override func configure() {
        addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: topAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor),
            contentView.rightAnchor.constraint(equalTo: rightAnchor),
            contentView.leftAnchor.constraint(equalTo: leftAnchor),
            ])
    }
}
