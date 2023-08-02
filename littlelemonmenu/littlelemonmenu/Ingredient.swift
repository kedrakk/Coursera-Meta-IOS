//
//  Ingredient.swift
//  littlelemonmenu
//
//  Created by kedk on 8/1/23.
//

import Foundation

enum Ingredient:String{
    case spinach = "Spinach"
    case broccoli = "Broccoli"
    case carrot = "Carrot"
    case pasta = "Pasta"
    case tomatosauce = "Tomato sauce"
}


struct MenuItem:Identifiable{
    let id = UUID()
    let title:String
    let ingredient:[Ingredient]
}


func foodMenuItems()->[MenuItem]{
    var menuItem : [MenuItem] = []
    for number in 1...12 {
        menuItem.append(MenuItem(title: "Food \(number)", ingredient: [Ingredient.spinach,Ingredient.broccoli,Ingredient.carrot,Ingredient.pasta,Ingredient.tomatosauce]))
    }
    return menuItem
}

func drinkMenuItems()->[MenuItem]{
    var menuItem : [MenuItem] = []
    for number in 1...8 {
        menuItem.append(MenuItem(title: "Drink \(number)", ingredient: [Ingredient.spinach]))
    }
    return menuItem
}

func desertMenuItems()->[MenuItem]{
    var menuItem : [MenuItem] = []
    for number in 1...4 {
        menuItem.append(MenuItem(title: "Desert \(number)", ingredient: [Ingredient.pasta,Ingredient.tomatosauce]))
    }
    return menuItem
}
