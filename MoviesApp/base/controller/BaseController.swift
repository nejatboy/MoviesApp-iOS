//
//  BaseController.swift
//  MoviesApp
//
//  Created by Nejat BOY on 19.11.2021.
//

import UIKit


class BaseController<NC: BaseNavigationController>: UIViewController {
    
    
    func navigationController() -> NC {
        return navigationController as! NC
    }

}
