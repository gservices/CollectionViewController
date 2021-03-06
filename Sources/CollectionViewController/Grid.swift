//
//  Grid.swift
//  
//
//  Created by Carlos Henrique Gava on 06/06/22.
//

import UIKit

open class Grid {
    open var columns: CGFloat
    open var margin: UIEdgeInsets
    open var padding: UIEdgeInsets
    
    public var verticalMargin: CGFloat {
        return self.margin.top + self.margin.bottom
    }
    
    public var horizontalMargin: CGFloat {
        return self.margin.left + self.margin.right
    }
    
    public var verticalPadding: CGFloat {
        return self.padding.top + self.padding.bottom
    }
    
    public var horizontalPadding: CGFloat {
        return self.padding.left + self.padding.right
    }
    
    public init(columns: CGFloat = 1, margin: UIEdgeInsets = .zero, padding: UIEdgeInsets = .zero) {
        self.columns = columns
        self.margin = margin
        self.padding = padding
    }
    
    open func size(for view: UIView, ratio: CGFloat, items: CGFloat = 1, gaps: CGFloat? = nil) -> CGSize {
        let size = self.width(for: view, items: items, gaps: gaps)
        return CGSize(width: size, height: (size * ratio).evenRounded)
    }
    
    open func size(for view: UIView, height: CGFloat, items: CGFloat = 1, gaps: CGFloat? = nil) -> CGSize {
        let size = self.width(for: view, items: items, gaps: gaps)
        
        var height = height
        if height < 0 {
            height = view.bounds.size.height - height
        }
        return CGSize(width: size, height: height.evenRounded)
    }
    
    open func width(for view: UIView, items: CGFloat = 1, gaps: CGFloat? = nil) -> CGFloat {
        let gaps = gaps ?? items - 1
        let width = view.bounds.size.width - self.horizontalMargin - self.horizontalPadding * gaps
        
        return (width / self.columns * items).evenRounded
    }
    
    open func height(for view: UIView, items: CGFloat = 1, gaps: CGFloat? = nil) -> CGFloat {
        let gaps = gaps ?? items - 1
        let height = view.bounds.size.height - self.verticalMargin - self.verticalPadding * gaps
        
        return (height / self.columns * items).evenRounded
    }
}
