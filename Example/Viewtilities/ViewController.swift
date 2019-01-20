//
//  ViewController.swift
//  Viewtilities
//
//  Created by gtokman on 01/18/2019.
//  Copyright (c) 2019 gtokman. All rights reserved.
//

import UIKit
import Viewtilities

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let myView = UIView()

        // Set corner radius and shadow
        myView.add(.cornerRadius(.default), .shadow(.default))

        myView.backgroundColor = .lightGray
        myView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(myView)

        NSLayoutConstraint.activate([
            myView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            myView.heightAnchor.constraint(equalToConstant: 100),
            myView.widthAnchor.constraint(equalToConstant: 100),
            ])
    }
}
