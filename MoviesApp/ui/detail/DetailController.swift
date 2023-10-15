//
//  DetailController.swift
//  MoviesApp
//
//  Created by Nejat BOY on 19.11.2021.
//


class DetailController: BaseController<MainNavigationController, DetailLayout> {
    
    var movieDetail: MovieDetailResponse?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let movieDetail = movieDetail else { return }
        
        navigationItem.title = movieDetail.title
        
        layout.imageViewPoster.loadFromUrl(url: movieDetail.poster)
        layout.genreView.set(genre: movieDetail.genre ?? "")
        layout.labelTitle.text = movieDetail.title
        layout.labelDescription.text = movieDetail.plot
        layout.ratingView.set(rating: movieDetail.imdbRating)
    }
}
