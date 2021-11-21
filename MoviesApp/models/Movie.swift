//
//  Movie.swift
//  MoviesApp
//
//  Created by Nejat BOY on 21.11.2021.
//

import Foundation


struct Movie: Decodable {
    let title, year, imdbID, type, poster: String

    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case imdbID
        case type = "Type"
        case poster = "Poster"
    }
}
