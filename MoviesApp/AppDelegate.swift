//
//  AppDelegate.swift
//  MoviesApp
//
//  Created by Nejat BOY on 19.11.2021.
//

import UIKit


@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow(frame: Device.dimension)
        window.rootViewController = MainNavigationController()
        window.makeKeyAndVisible()
        
        self.window = window
        
        return true
    }
}

