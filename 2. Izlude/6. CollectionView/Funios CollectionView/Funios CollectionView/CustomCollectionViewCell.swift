//
//  CustomCollectionViewCell.swift
//  Funios CollectionView
//
//  Created by Ferry Adi Wijayanto on 07/08/22.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    static let cellID = "CustomCollectionViewCell"
    
    let label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
