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
