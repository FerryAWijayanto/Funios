//
//  HomeViewController.swift
//  Funios CollectionView
//
//  Created by Ferry Adi Wijayanto on 06/08/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    lazy var collectionView = makeCollectionView()
    let cellID = "cellID"
    let dataSource = CustomCollectionViewDataSource()
    let btn: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("go to next", for: .normal)
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        
        view.addSubview(btn)
        
        btn.addTarget(self, action: #selector(handleToDetail), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            btn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            btn.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
//        setupCollectionView()
    }
    
    @objc private func handleToDetail() {
        let title = "This is a navigation title"
        
        let controller = DetailViewController(title: title)
        navigationController?.pushViewController(controller, animated: true)
    }
    
    private func setupCollectionView() {
        view.addSubview(collectionView)
        collectionView.dataSource = dataSource
        collectionView.delegate = self
        collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: CustomCollectionViewCell.cellID)
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    private func makeCollectionView() -> UICollectionView {
        let collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: .createCollectionViewLayout(in: view))
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }

}

extension HomeViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let title = "This is a navigation title"
        
        let controller = DetailViewController(title: title)
        navigationController?.pushViewController(controller, animated: true)
    }
    
}

