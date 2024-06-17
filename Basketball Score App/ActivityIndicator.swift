//
//  ActivityIndicator.swift
//  Basketball Score App
//
//  Created by Neenu on 16/06/24.
//

import Foundation
import UIKit

class ActivityIndicatorManager {

    static let shared = ActivityIndicatorManager()

    private var activityIndicator: UIActivityIndicatorView?

    private init() {}

    func showActivityIndicator(on view: UIView, color: UIColor = .white) {
        if activityIndicator == nil {
            activityIndicator = UIActivityIndicatorView(style: .large)
            activityIndicator?.translatesAutoresizingMaskIntoConstraints = false
            activityIndicator?.hidesWhenStopped = true
        }

        guard let activityIndicator = activityIndicator else { return }

        activityIndicator.color = color 

        view.addSubview(activityIndicator)

        NSLayoutConstraint.activate([
            activityIndicator.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            activityIndicator.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

        DispatchQueue.main.async {
            activityIndicator.startAnimating()
        }
    }

    func hideActivityIndicator() {
        DispatchQueue.main.async {
            self.activityIndicator?.stopAnimating()
            self.activityIndicator?.removeFromSuperview()
        }
    }
}

