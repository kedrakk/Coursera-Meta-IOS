//
//  MenuViewModel.swift
//  littlelemonmenu
//
//  Created by kedk on 8/1/23.
//

import Foundation

class MenuViewModel{
    let AllFoodMenu:[MenuItem]
    let AllDrinkMenu:[MenuItem]
    let AllDesertMenu:[MenuItem]
    
    init(AllFoodMenu: [MenuItem], AllDrinkMenu: [MenuItem], AllDesertMenu: [MenuItem]) {
        self.AllFoodMenu = AllFoodMenu
        self.AllDrinkMenu = AllDrinkMenu
        self.AllDesertMenu = AllDesertMenu
    }
}
