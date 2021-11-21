//
//  Application.swift
//  MoviesApp
//
//  Created by Nejat BOY on 20.11.2021.
//

import Foundation


struct Info {
    
    let intro: String
    let version: String
    
    init?(value: Any?) {
        guard
            let data = value as? NSDictionary,
            let intro = data["intro"] as? String,
            let version = data["version"] as? String
        else { return nil }

        self.intro = intro
        self.version = version
    }
}
