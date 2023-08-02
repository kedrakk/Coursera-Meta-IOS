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

class MenuItem:Identifiable, MenuItemProtocol{
    let id: UUID
    let price: Double
    let title: String
    let menuCategory: MenuCategory
    var orderCount: Int
    var priceInt: Int
    var ingredient: [Ingredient]
    
    init(price: Double, title: String, menuCategory: MenuCategory, orderCount: Int, priceInt: Int, ingredient: [Ingredient]) {
        self.id = UUID()
        self.price = price
        self.title = title
        self.menuCategory = menuCategory
        self.orderCount = orderCount
        self.priceInt = priceInt
        self.ingredient = ingredient
    }
}


func foodMenuItems()->[MenuItem]{
    var menuItem : [MenuItem] = []
    for number in 1...12 {
        menuItem.append(
            MenuItem(
                price: 100.0,
                title: "Food \(number)",
                menuCategory: MenuCategory.food,
                orderCount: 10,
                priceInt: 100,
                ingredient: [Ingredient.spinach,Ingredient.broccoli,Ingredient.carrot,Ingredient.pasta,Ingredient.tomatosauce]
            )
        )
    }
    return menuItem
}

func drinkMenuItems()->[MenuItem]{
    var menuItem : [MenuItem] = []
    for number in 1...8 {
        menuItem.append(
            MenuItem(
                price: 60.0,
                title: "Drink \(number)",
                menuCategory: MenuCategory.drink,
                orderCount: 7,
                priceInt: 60,
                ingredient: [Ingredient.spinach]
            )
        )
    }
    return menuItem
}

func desertMenuItems()->[MenuItem]{
    var menuItem : [MenuItem] = []
    for number in 1...4 {
        menuItem.append(
            MenuItem(
                price: 80.0,
                title: "Desert \(number)",
                menuCategory: MenuCategory.desert,
                orderCount: 9,
                priceInt: 80,
                ingredient: [Ingredient.pasta,Ingredient.tomatosauce]
            )
        )
    }
    return menuItem
}
