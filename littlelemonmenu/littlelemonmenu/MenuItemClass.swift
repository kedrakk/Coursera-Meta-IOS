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
    var ingredient:[Ingredient] {get set}
}

class MenuItem:Identifiable, MenuItemProtocol{
    let id: UUID
    let price: Double
    let title: String
    let menuCategory: MenuCategory
    var orderCount: Int
    var ingredient: [Ingredient]
    
    init(price: Double, title: String, menuCategory: MenuCategory, orderCount: Int, ingredient: [Ingredient]) {
        self.id = UUID()
        self.price = price
        self.title = title
        self.menuCategory = menuCategory
        self.orderCount = orderCount
        self.ingredient = ingredient
    }
}

func foodMenuItems()->MenuItemList{
    let foodMenu = [
        MenuItem(
            price: 100.0, title: "Food 1", menuCategory: MenuCategory.food, orderCount: 10, ingredient: [Ingredient.broccoli,Ingredient.carrot]
        ),
        MenuItem(
            price: 120.0, title: "Food 2", menuCategory: MenuCategory.food, orderCount: 8, ingredient: [Ingredient.broccoli,Ingredient.carrot]
        ),
        MenuItem(
            price: 90.0, title: "Food 3", menuCategory: MenuCategory.food, orderCount: 5, ingredient: [Ingredient.broccoli,Ingredient.spinach]
        ),
        MenuItem(
            price: 110.0, title: "Food 4", menuCategory: MenuCategory.food, orderCount: 10, ingredient: [Ingredient.broccoli,Ingredient.carrot]
        ),
        MenuItem(
            price: 200.0, title: "Food 5", menuCategory: MenuCategory.food, orderCount: 8, ingredient: [Ingredient.broccoli,Ingredient.carrot]
        ),
        MenuItem(
            price: 50.0, title: "Food 6", menuCategory: MenuCategory.food, orderCount: 5, ingredient: [Ingredient.broccoli,Ingredient.spinach]
        ),
        MenuItem(
            price: 70.0, title: "Food 7", menuCategory: MenuCategory.food, orderCount: 10, ingredient: [Ingredient.broccoli,Ingredient.carrot]
        ),
        MenuItem(
            price: 85.0, title: "Food 8", menuCategory: MenuCategory.food, orderCount: 8, ingredient: [Ingredient.broccoli,Ingredient.carrot]
        ),
        MenuItem(
            price: 123.0, title: "Food 9", menuCategory: MenuCategory.food, orderCount: 5, ingredient: [Ingredient.broccoli,Ingredient.spinach]
        ),
        MenuItem(
            price: 55.0, title: "Food 10", menuCategory: MenuCategory.food, orderCount: 10, ingredient: [Ingredient.broccoli,Ingredient.carrot]
        ),
        MenuItem(
            price: 180.0, title: "Food 11", menuCategory: MenuCategory.food, orderCount: 8, ingredient: [Ingredient.broccoli,Ingredient.carrot]
        ),
        MenuItem(
            price: 90.0, title: "Food 12", menuCategory: MenuCategory.food, orderCount: 5, ingredient: [Ingredient.broccoli,Ingredient.spinach]
        ),
    ]
    return MenuItemList(MenuItemsList: foodMenu)
}

func drinkMenuItems()->MenuItemList{
    let drinkMenu = [
        MenuItem(
            price: 100.0, title: "Drink 1", menuCategory: MenuCategory.drink, orderCount: 10, ingredient: [Ingredient.broccoli,Ingredient.carrot]
        ),
        MenuItem(
            price: 120.0, title: "Drink 2", menuCategory: MenuCategory.drink, orderCount: 8, ingredient: [Ingredient.broccoli,Ingredient.carrot]
        ),
        MenuItem(
            price: 90.0, title: "Drink 3", menuCategory: MenuCategory.drink, orderCount: 5, ingredient: [Ingredient.broccoli,Ingredient.spinach]
        ),
        MenuItem(
            price: 80.0, title: "Drink 4", menuCategory: MenuCategory.drink, orderCount: 10, ingredient: [Ingredient.broccoli,Ingredient.carrot]
        ),
        MenuItem(
            price: 150.0, title: "Drink 5", menuCategory: MenuCategory.drink, orderCount: 8, ingredient: [Ingredient.broccoli,Ingredient.carrot]
        ),
        MenuItem(
            price: 170.0, title: "Drink 6", menuCategory: MenuCategory.drink, orderCount: 5, ingredient: [Ingredient.broccoli,Ingredient.spinach]
        ),
        MenuItem(
            price: 50.0, title: "Drink 7", menuCategory: MenuCategory.drink, orderCount: 10, ingredient: [Ingredient.broccoli,Ingredient.carrot]
        ),
        MenuItem(
            price: 30.0, title: "Drink 8", menuCategory: MenuCategory.drink, orderCount: 8, ingredient: [Ingredient.broccoli,Ingredient.carrot]
        ),
    ]
    return MenuItemList(MenuItemsList: drinkMenu)
}

func desertMenuItems()->MenuItemList{
    let desertMenu = [
        MenuItem(
            price: 100.0, title: "Desert 1", menuCategory: MenuCategory.desert, orderCount: 15, ingredient: [Ingredient.tomatosauce,Ingredient.carrot]
        ),
        MenuItem(
            price: 120.0, title: "Desert 2", menuCategory: MenuCategory.desert, orderCount: 8, ingredient: [Ingredient.carrot,Ingredient.tomatosauce]
        ),
        MenuItem(
            price: 80.0, title: "Desert 3", menuCategory: MenuCategory.desert, orderCount: 16, ingredient: [Ingredient.tomatosauce,Ingredient.spinach]
        ),
        MenuItem(
            price: 90.0, title: "Desert 4", menuCategory: MenuCategory.desert, orderCount: 5, ingredient: [Ingredient.broccoli,Ingredient.carrot]
        ),
    ]
    return MenuItemList(MenuItemsList: desertMenu)
}
