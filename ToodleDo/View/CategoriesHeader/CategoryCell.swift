//
//  CategoryCell.swift
//  ToodleDo
//
//  Created by Stephen Dowless on 10/7/21.
//

import UIKit

class CategoryCell: UICollectionViewCell {
    
    // MARK: - Properties
    
    private let tasksLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .lightGray
        label.text = "40 Tasks"
        return label
    }()
    
    private let categoryLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        label.text = "Business"
        return label
    }()
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        layer.cornerRadius = 32
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.shadowRadius = 6
        layer.shadowOpacity = 1.0
        layer.shadowOffset = CGSize(width: 4, height: 4)
        
        contentView.addSubview(<#T##view: UIView##UIView#>)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
