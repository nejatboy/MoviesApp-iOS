//
//  Rating.swift
//  MoviesApp
//
//  Created by Nejat BOY on 21.11.2021.
//

import Foundation


struct Rating: Decodable {
    let source, value: String

    enum CodingKeys: String, CodingKey {
        case source = "Source"
        case value = "Value"
    }
}
