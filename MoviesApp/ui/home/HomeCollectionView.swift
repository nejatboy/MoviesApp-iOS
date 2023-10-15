//
//  HomeCollectionView.swift
//  MoviesApp
//
//  Created by Nejat BOY on 23.11.2021.
//

import Foundation
import UIKit


class HomeCollectionView: BaseCollectionView<Movie, HomeCell> {
    
    
    private var movies = [Movie]()
    
    
    override func setLayout() {
        let spacing = Device.width * 0.05
        let width = (Device.width - 3 * spacing) / 2
        
        collectionViewLayout = UICollectionViewFlowLayout().also { it in
            it.minimumLineSpacing = spacing
            it.minimumInteritemSpacing = spacing
            it.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
            it.itemSize = CGSize(width: width, height: 1.9 * width)
        }
    }
    
    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return movies.count
//    }
//
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = dequeueReusableCell(withReuseIdentifier: C.id, for: indexPath) as! C
//        let movie = movies[indexPath.item]
//        cell.bind(movie: movie)
//
//        if indexPath.row == movies.count - 1 {
//            let page = movies.count / 10 + 1
//            parent().controller().request(page: page, keyword: parent().controller().keyword)
//        }
//
//        return cell
//    }
    
    
    
    
    
//    func addMovies(_ movies: [Movie]) {
//        self.movies.append(contentsOf: movies)
//        reloadData()
//    }
//
//
//    func clear() {
//        movies.removeAll()
//        reloadData()
//    }
}
