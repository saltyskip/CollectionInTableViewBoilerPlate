//
//  CollectionTableCell.swift
//  collectionTable
//
//  Created by Andrei Terentiev on 6/1/17.
//  Copyright © 2017 Kyash. All rights reserved.
//

import Foundation
import UIKit

class CollectionTableCell: UITableViewCell {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var collectionViewOffset: CGFloat {
        get {
            return collectionView.contentOffset.x
        }
        set {
            collectionView.contentOffset.x = newValue
        }
    }
    
    func setCollectionViewDataSourceDelegate <D: UICollectionViewDataSource & UICollectionViewDelegate>(dataSourceDelegate: D, forRow row: Int) {
        collectionView.delegate = dataSourceDelegate
        collectionView.dataSource = dataSourceDelegate
        collectionView.tag = row
        collectionView.reloadData()
    }
}
