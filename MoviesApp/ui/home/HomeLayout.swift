//
//  HomeLayout.swift
//  MoviesApp
//
//  Created by Nejat BOY on 19.11.2021.
//

import UIKit


class HomeLayout: BaseControllerLayout<MainNavigationController, HomeController> {
    
    let tableView = HomeTableView()
    
    
    override func setupSubviews() {
        addSubview(tableView)
    }
    
    
    override func setConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
