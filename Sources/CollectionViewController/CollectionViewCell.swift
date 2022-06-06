//
//  CollectionViewCell.swift
//  
//
//  Created by Carlos Henrique Gava on 06/06/22.
//

import UIKit

open class Cell: UICollectionViewCell {
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.initialize()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.initialize()
    }
    
    open override func awakeFromNib() {
        super.awakeFromNib()
        self.reset()
    }
    
    open override func prepareForReuse() {
        super.prepareForReuse()
        
        self.reset()
    }
    
    open func initialize() {}
    
    open func reset() {}
}
