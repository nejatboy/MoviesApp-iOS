//
//  BaseCollectionView.swift
//  MoviesApp
//
//  Created by Nejat BOY on 23.11.2021.
//


import UIKit


class BaseCollectionView<ITEM, C: BaseCollectionViewCell<ITEM>>: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource {
    
    private let cellId = UUID().uuidString
    private var items: [ITEM] = []
    var onItemClicked: ((ITEM) -> Void)?
    var lastItemScrolled: ((Int) -> Void)?
    
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: .init())
        
        translatesAutoresizingMaskIntoConstraints = false
        register(C.self, forCellWithReuseIdentifier: cellId)
        
        delegate = self
        dataSource = self
        
        configuration()
        setLayout()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configuration() {}
    
    
    func setLayout() {}
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        items.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as? C else { return .init() }
        
        let item = items[indexPath.item]
        cell.bindItem(item: item)
        
        if indexPath.item == items.count - 1 {
            lastItemScrolled?(items.count)
        }
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let onItemClicked = onItemClicked else { return }
        
        let movie = items[indexPath.item]
        onItemClicked(movie)
    }
    
    
    func addItems(_ items: [ITEM]) {
        self.items.append(contentsOf: items)
        reloadData()
    }
    
    
    func clear() {
        items.removeAll()
        reloadData()
    }
}
