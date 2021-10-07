//
//  CategoriesHeaderView.swift
//  ToodleDo
//
//  Created by Stephen Dowless on 10/6/21.
//

import UIKit

class CategoriesHeaderView: UITableViewCell {
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .purple
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
