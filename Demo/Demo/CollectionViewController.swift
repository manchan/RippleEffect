//
//  ViewController.swift
//  Demo
//
//  Created by you_matz on 2019/01/26.
//  Copyright © 2019 you_matz. All rights reserved.
//

import UIKit
import RippleEffect

final class CollectionViewController: UICollectionViewController {
    
    private let cellMargin: CGFloat = 10
    private let reuseIdentifier = "Cell"
    
    private let items = ["erimo", "erimo", "erimo", "erimo", "erimo", "erimo", "erimo", "erimo",
                         "erimo", "erimo", "erimo", "erimo", "erimo", "erimo", "erimo", "erimo"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    override func collectionView(_ collectionView: UICollectionView,
                                 cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        guard let imageCollectionViewCell = cell as? ImageCollectionViewCell else {
            return cell
        }
        
        let fileName = items[indexPath.row]
        imageCollectionViewCell.imageView.image = UIImage(named: fileName)
        imageCollectionViewCell.titleLabel.text = fileName
        
        return imageCollectionViewCell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let selected = self.collectionView.indexPathsForSelectedItems?.first?.row {
            segue.destination.title = items[selected]
        }
    }
}

// MARK: - UICollectionViewDelegateFlowLayout

extension CollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let length = (self.view.frame.width) - (cellMargin * 2)
        return CGSize(width: length, height: length)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: cellMargin, bottom: cellMargin, right: cellMargin)
    }
}

