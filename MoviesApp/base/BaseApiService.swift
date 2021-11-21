//
//  BaseApiService.swift
//  MoviesApp
//
//  Created by Nejat BOY on 21.11.2021.
//

import Foundation


class BaseApiService: NSObject {
    
    let baseUrl = "http://www.omdbapi.com"
    let apiKey = "9893101c"
    let urlSessions = URLSession.shared
    let jsonDecoder = JSONDecoder()
    var messageListener: ((_ error: String, _ type: MessageType) -> Void)?
    
    
    func call<T>( request: URLRequest, type: T.Type, completion: @escaping(T?) -> Void ) where T: Decodable {
        urlSessions.dataTask(with: request) { [self] data, response, error in
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("# WebServiceError -> \(error?.localizedDescription ?? "Error")")
                messageListener?(Text.Error.common, .error)
                return async { completion(nil) }
            }
            
            print(response)

            do {
                let model = try JSONDecoder().decode(T.self, from: data)
                return async { completion(model) }
            }

            catch let error {
                print("# WebServiceError -> \(error.localizedDescription)")
                messageListener?(Text.Error.common, .error)
                return self.async { completion(nil) }
            }

        }.resume()
    }
}

