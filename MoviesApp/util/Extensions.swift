//
//  Extensions.swift
//  MoviesApp
//
//  Created by Nejat BOY on 19.11.2021.
//

import Foundation
import UIKit



protocol InlineConfigurable {}
extension NSObject: InlineConfigurable {}



//MARK: - ALSO
extension InlineConfigurable {
    @discardableResult func also(_ block: (Self) -> Void) -> Self  {
        block(self)
        return self
    }
}


// MARK: - ASYNC
extension InlineConfigurable{
    func async(_ block: @escaping () -> Void) {
        DispatchQueue.main.async {
            block()
        }
    }
}


// MARK: - UIFONT
extension UIFont {
    static func getDynamic(of size: CGFloat, isBold: Bool) -> Self {
        let width = Device.width
        
        let multipler = width / 375
        let font: UIFont = isBold ? boldSystemFont(ofSize: size * multipler) : systemFont(ofSize: size * multipler)
        return font as! Self
    }
}
