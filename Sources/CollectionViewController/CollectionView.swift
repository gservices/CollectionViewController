//
//  CollectionView.swift
//  
//
//  Created by Carlos Henrique Gava on 06/06/22.
//

import Foundation
import UIKit

open class CollectionView: UICollectionView {
    open var source: Source? = nil {
        didSet {
            self.source?.register(itemsFor: self)
            self.dataSource = self.source
            self.delegate = self.source
        }
    }
}
