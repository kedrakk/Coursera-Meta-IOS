//
//  MenuItemClass.swift
//  littlelemonmenu
//
//  Created by kedk on 8/1/23.
//

import Foundation

protocol MenuItemProtocol{
    var id:UUID {get}
    var price:Double {get}
    var title:String {get}
    var menuCategory:MenuCategory {get}
    var orderCount:Int {get set}
    var priceInt:Int {get set}
    var ingredient:[Ingredient] {get set}
}

class MenuItemClass:MenuItemProtocol{
    let id: UUID
    let price: Double
    let title: String
    let menuCategory: MenuCategory
    var orderCount: Int
    var priceInt: Int
    var ingredient: [Ingredient]
    
    init(id: UUID, price: Double, title: String, menuCategory: MenuCategory, orderCount: Int, priceInt: Int, ingredient: [Ingredient]) {
        self.id = id
        self.price = price
        self.title = title
        self.menuCategory = menuCategory
        self.orderCount = orderCount
        self.priceInt = priceInt
        self.ingredient = ingredient
    }
}
