//
//  Extensions.swift
//  MoviesApp
//
//  Created by Nejat BOY on 19.11.2021.
//

import Foundation



protocol InlineConfigurable {}
extension NSObject: InlineConfigurable {}



//MARK: - ALSO
extension InlineConfigurable {
    @discardableResult func also(_ block: (Self) -> Void) -> Self  {
        block(self)
        return self
    }
}
