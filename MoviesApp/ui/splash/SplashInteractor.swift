//
//  SplashInteractor.swift
//  MoviesApp
//
//  Created by Nejat BOY on 20.11.2021.
//

import Foundation



class SplashInteractor: BaseInteractor {
    
    func requestFetchApplicationInfo(firebaseService: FirebaseService, completion: @escaping (Info) -> Void) {
        firebaseService.fetchApplicationInfo {
            completion($0)
        }
    }
    
}
