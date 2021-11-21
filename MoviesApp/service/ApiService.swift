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
                return
            }
            
            let movies = responseModel?.movies ?? [Movie]()
            completion(movies)
        }
    }
    
    
    func fetchMovieDetail(id: String) {
        let url = URL(string: baseUrl + "/?i=\(id)&plot=full&apikey=\(apiKey)")!
        var request = URLRequest(url: url)
        
        request.httpMethod = "GET"
        
        call(request: request, type: MovieDetailResponse.self) { responseModel in
            print("asd")
        }
    }
}