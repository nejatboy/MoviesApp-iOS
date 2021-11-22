//
//  FirebaseService.swift
//  MoviesApp
//
//  Created by Nejat BOY on 20.11.2021.
//

import Firebase



struct FirebaseService {
    
    private let db = Database.database()
    var messageListener: ((String, MessageType) -> Void)?
    
    
    func fetchApplicationInfo(completion: @escaping (Info) -> Void) {
        let reference = db.reference().child("Application").child("iOS")
            
        reference.getData { [self] error, snapshot in
            if let error = error  {
                messageListener?(error.localizedDescription, .error)
                return
            }
            
            guard let info = Info(value: snapshot.value) else {
                messageListener?(Text.Error.common, .error)
                return
            }
            
            completion(info)
        }
    }
    
    
    func fetchKeywords(completion: @escaping ([String]) -> Void) {
        let reference = db.reference().child("Keywords")
        
        reference.getData { [self] error, snapshot in
            if let error = error  {
                messageListener?(error.localizedDescription, .error)
                return
            }
            
            guard let keywords = snapshot.value as? [String] else {
                messageListener?(Text.Error.common, .error)
                return
            }
            
            completion(keywords)
        }
    }
}
