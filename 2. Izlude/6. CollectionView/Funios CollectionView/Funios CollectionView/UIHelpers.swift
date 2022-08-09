//
//  UIHelpers.swift
//  Funios CollectionView
//
//  Created by Ferry Adi Wijayanto on 06/08/22.
//

import UIKit.UIView

protocol CollectionViewFlowLayoutProtocol {
    static func createCollectionViewLayout(in view: UIView) -> UICollectionViewFlowLayout
}

extension CollectionViewFlowLayoutProtocol {
    static func createCollectionViewLayout(in view: UIView) -> UICollectionViewFlowLayout {
        let width = view.bounds.width
        let padding: CGFloat = 12
        let minimumItemSpacing: CGFloat = 12
        let availableWidth = width - (padding * 2) - (minimumItemSpacing * 2)
        let itemWidth = availableWidth / 3
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth)
        
        return flowLayout
    }
}

extension UICollectionViewLayout: CollectionViewFlowLayoutProtocol {}
//enum UIHelpers {
//
//    static func createCollectionViewLayout(in view: UIView) -> UICollectionViewFlowLayout {
//        let width = view.bounds.width
//        let padding: CGFloat = 12
//        let minimumItemSpacing: CGFloat = 12
//        let availableWidth = width - (padding * 2) - (minimumItemSpacing * 2)
//        let itemWidth = availableWidth / 3
//
//        let flowLayout = UICollectionViewFlowLayout()
//        flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
//        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth)
//
//        return flowLayout
//    }
//}
