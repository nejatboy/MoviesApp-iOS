//
//  BaseCollectionView.swift
//  MoviesApp
//
//  Created by Nejat BOY on 23.11.2021.
//


import UIKit


class BaseCollectionView<C: BaseCollectionViewCell, L: BaseLayout>: UICollectionView {
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: .init())
        
        translatesAutoresizingMaskIntoConstraints = false
        register(C.self, forCellWithReuseIdentifier: C.id)
        
        configuration()
        setLayout()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configuration() {
        
    }
    
    
    func setLayout() {
        
    }
    
    
    func parent() -> L {
        return superview as! L
    }
    
}
