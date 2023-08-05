//
//  MenuViewModel.swift
//  littlelemonmenu
//
//  Created by kedk on 8/1/23.
//

import Foundation

class MenuViewModel:ObservableObject{
    @Published var AllFoodMenu:MenuItemList
    @Published var AllDrinkMenu:MenuItemList
    @Published var AllDesertMenu:MenuItemList
    @Published var menuCategoryWithOptions:[MenuCatgoryAndOption]
    @Published var selectedSortOption:SortOptions
    
    init(){
        AllFoodMenu = foodMenuItems();
        AllDrinkMenu = drinkMenuItems();
        AllDesertMenu = desertMenuItems();
        menuCategoryWithOptions = [
            MenuCatgoryAndOption(id: UUID(),menuCategory: MenuCategory.food, isSelected: true),
            MenuCatgoryAndOption(id: UUID(),menuCategory: MenuCategory.drink, isSelected: true),
            MenuCatgoryAndOption(id: UUID(),menuCategory: MenuCategory.desert, isSelected: true)
        ];
        selectedSortOption = SortOptions.name;
    }
}

class MenuItemList:ObservableObject{
    @Published var MenuItemsList:[MenuItem]
    
    init(MenuItemsList: [MenuItem]) {
        self.MenuItemsList = MenuItemsList
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
