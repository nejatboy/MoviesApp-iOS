//
//  DetailController.swift
//  MoviesApp
//
//  Created by Nejat BOY on 19.11.2021.
//

import Foundation


class DetailController: BaseController<MainNavigationController> {
    
    private let layout = DetailLayout()
    
    
    override func loadView() {
        view = layout
    }
    
    
    func bindMovieDetail(_ movieDetail: MovieDetailResponse, completion: @escaping () -> Void) {
        DispatchQueue.main.async { [self] in
            navigationItem.title = movieDetail.title
            
            layout.imageViewPoster.loadFromUrl(url: movieDetail.poster)
            layout.genreView.set(genre: movieDetail.genre ?? "")
            layout.labelTitle.text = movieDetail.title
            layout.labelDescription.text = movieDetail.plot
            
            completion()
        }
    }
}
