//
//  Section.swift
//  
//
//  Created by Carlos Henrique Gava on 06/06/22.
//

import UIKit

open class Section {
    public var grid: Grid?
    public var header: ViewModelProtocol?
    public var footer: ViewModelProtocol?
    public var items: [ViewModelProtocol]

    public init(grid: Grid? = nil,
                header: ViewModelProtocol? = nil,
                footer: ViewModelProtocol? = nil,
                items: [ViewModelProtocol] = []) {
        self.grid = grid
        self.header = header
        self.footer = footer
        self.items = items
    }

    public func add(_ item: ViewModelProtocol) {
        self.items.append(item)
    }

    public func by<T, U>(id: String) -> ViewModel<T, U>? {
        for item in self.items {
            if item.id == id {
                return item as? ViewModel<T, U>
            }
        }
        return nil
    }
}
