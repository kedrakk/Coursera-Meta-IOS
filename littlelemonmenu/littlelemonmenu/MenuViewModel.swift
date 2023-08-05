//
//  MenuViewModel.swift
//  littlelemonmenu
//
//  Created by kedk on 8/1/23.
//

import Foundation

class MenuViewModel:ObservableObject{
    let AllFoodMenu:[MenuItem]
    let AllDrinkMenu:[MenuItem]
    let AllDesertMenu:[MenuItem]
    @Published var menuCategoryWithOptions:[MenuCatgoryAndOption]
    
    init(){
        AllFoodMenu = foodMenuItems();
        AllDrinkMenu = drinkMenuItems();
        AllDesertMenu = desertMenuItems();
        menuCategoryWithOptions = [
            MenuCatgoryAndOption(id: UUID(),menuCategory: MenuCategory.food, isSelected: true),
            MenuCatgoryAndOption(id: UUID(),menuCategory: MenuCategory.drink, isSelected: true),
            MenuCatgoryAndOption(id: UUID(),menuCategory: MenuCategory.desert, isSelected: true)
        ]
    }
}

class MenuCatgoryAndOption:Identifiable,ObservableObject{
    let id:UUID
    let menuCategory:MenuCategory
    @Published var isSelected:Bool
    
    init(id: UUID, menuCategory: MenuCategory, isSelected: Bool) {
        self.id = id
        self.menuCategory = menuCategory
        self.isSelected = isSelected
    }
}
