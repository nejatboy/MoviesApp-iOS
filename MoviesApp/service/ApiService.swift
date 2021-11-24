//
//  ApiService.swift
//  MoviesApp
//
//  Created by Nejat BOY on 21.11.2021.
//

import Foundation



class ApiService: BaseApiService {
    
    func search(keyword: String, page: Int, completion: @escaping ([Movie]) -> Void) {
        let url = URL(string: baseUrl + "/?s=\(keyword)&page=\(page)&apikey=\(apiKey)")!
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        call(request: request, type: MoviesResponseModel.self) { [self] responseModel in
            if let error = responseModel?.error {
                messageListener?(error, .error)
            }
            
            let movies = responseModel?.movies ?? [Movie]()
            completion(movies)
        }
    }
    
    
    func fetchMovieDetail(id: String, completion: @escaping (MovieDetailResponse) -> Void) {
        let url = URL(string: baseUrl + "/?i=\(id)&plot=full&apikey=\(apiKey)")!
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        call(request: request, type: MovieDetailResponse.self) { [self] responseModel in
            guard let movieDetail = responseModel else {
                messageListener?(Text.Error.common, .error)
                return
            }
            
            completion(movieDetail)
        }
    }
}
