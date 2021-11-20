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
            
        reference.getData { error, snapshot in
            if let error = error  {
                print("FirebaseService# " + error.localizedDescription)
                return
            }
            
            guard let info = Info(value: snapshot.value) else {
                // ERROR
                return
            }
            
            completion(info)
        }
        
        
    }
}
