//
//  MoviesResponseModel.swift
//  MoviesApp
//
//  Created by Nejat BOY on 21.11.2021.
//

import Foundation



struct MoviesResponseModel: Decodable {
    let movies: [Movie]?
    let totalResults: String?
    let response: String
    let error: String?

    enum CodingKeys: String, CodingKey {
        case movies = "Search"
        case totalResults
        case response = "Response"
        case error = "Error"
    }
}
