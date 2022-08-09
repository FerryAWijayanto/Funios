//
//  CustomCollectionViewDataSource.swift
//  Funios CollectionView
//
//  Created by Ferry Adi Wijayanto on 07/08/22.
//

import Foundation
import UIKit

class CustomCollectionViewDataSource: NSObject, UICollectionViewDataSource {
    let cellID = "cellID"
    
    var items: [String] = []
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.cellID, for: indexPath)
        cell.backgroundColor = .blue
        return cell
    }
    
    
}
