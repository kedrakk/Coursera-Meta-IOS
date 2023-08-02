//
//  MenuItemView.swift
//  littlelemonmenu
//  Created by kedk on 7/31/23.
//

import SwiftUI

struct MenuItemView: View {
    
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    let allMenuData = MenuViewModel(AllFoodMenu: foodMenuItems(), AllDrinkMenu: drinkMenuItems(), AllDesertMenu: desertMenuItems())
   
    var body: some View {
        NavigationView{
            Section{
                ScrollView{
                    VStack(alignment: .leading){
                        ForEach(MenuCategory.allCases, id: \.rawValue) { item in
                            if(item == MenuCategory.food){
                                MenuItemGridSection(title: item.rawValue, menuItems: allMenuData.AllFoodMenu)
                            }else if(item == MenuCategory.drink){
                                MenuItemGridSection(title: item.rawValue, menuItems: allMenuData.AllDrinkMenu)
                            }
                            else{
                                MenuItemGridSection(title: item.rawValue, menuItems: allMenuData.AllDesertMenu)
                            }
                        }
                    }.padding(10)
                }.padding(10)
            }
            .navigationTitle("Menu")
            .toolbar{
                NavigationLink(destination: MenuItemsOptionView()
                ){
                    Image(systemName: "slider.horizontal.3").imageScale(.large)
                        .foregroundColor(.accentColor)
                }
                
            }
        }
    }
}


struct MenuItemGridSection:View{
    let title:String
    let menuItems:[MenuItem]
    
    init(title: String, menuItems: [MenuItem]) {
        self.title = title
        self.menuItems = menuItems
    }
    
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View{
        Section(header: Text(title).font(.largeTitle)){
            LazyVGrid(columns: columns) {
                ForEach(menuItems){ menuItem in
                    NavigationLink(destination: MenuItemDetailsView(menuItem: menuItem)){
                        VStack {
                            Rectangle()
                            Text(menuItem.title)
                        }
                        .frame(height: 120)
                        .foregroundColor(.black)
                    }
                }
            }
        }
    }
}



