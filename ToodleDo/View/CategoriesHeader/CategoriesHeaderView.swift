//
//  CategoriesHeaderView.swift
//  ToodleDo
//
//  Created by Stephen Dowless on 10/6/21.
//

import UIKit

class CategoriesHeaderView: UITableViewCell {
    
    // MARK: - Properties
    
    private let cellIdentifier = "CategoryCell"
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return cv
    }()
    
    // MARK: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Helpers
    
    func configure() {
        contentView.addSubview(collectionView)
        collectionView.fillSuperview()
        collectionView.contentInset.left = 16
        collectionView.contentInset.right = 16
        collectionView.backgroundColor = .white
        
        collectionView.register(CategoryCell.self, forCellWithReuseIdentifier: cellIdentifier)
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate

extension CategoriesHeaderView: UICollectionViewDelegate {
    
}

// MARK: - UICollectionViewDataSource

extension CategoriesHeaderView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! CategoryCell
        return cell
    }
}

// MARK: - UICollectionViewDelegateFlowLayout

extension CategoriesHeaderView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 240, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 32
    }
}
