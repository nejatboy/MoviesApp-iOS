//
//  VerticalScrollView.swift
//  MoviesApp
//
//  Created by Nejat BOY on 24.11.2021.
//

import UIKit


class VerticalScrollView: BaseScrollView {
    
    
    func fillTo(parent view: BaseControllerLayout) {
        NSLayoutConstraint.activate([
            leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            bottomAnchor.constraint(equalTo: view.bottomAnchor),
            trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}
