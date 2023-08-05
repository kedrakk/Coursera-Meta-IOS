//
//  MenuItemView.swift
//  littlelemonmenu
//  Created by kedk on 7/31/23.
//

import SwiftUI

struct MenuItemView: View {
    
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    let allMenuData = MenuViewModel()
   
    var body: some View {
        NavigationView{
            Section{
                ScrollView{
                    VStack(alignment: .leading){
                        ForEach(MenuCategory.allCases, id: \.rawValue) { item in
                            if(item == MenuCategory.food){
                                MenuItemGridSection(title: item.rawValue)
                                    .environmentObject(allMenuData.AllFoodMenu)
                                    .environmentObject(allMenuData.menuCategoryWithOptions[0])
                            }else if(item == MenuCategory.drink){
                                MenuItemGridSection(title: item.rawValue)
                                    .environmentObject(allMenuData.AllDrinkMenu)
                                    .environmentObject(allMenuData.menuCategoryWithOptions[1])
                            }
                            else{
                                MenuItemGridSection(title: item.rawValue)
                                    .environmentObject(allMenuData.AllDesertMenu)
                                    .environmentObject(allMenuData.menuCategoryWithOptions[2])
                            }
                        }
                    }.padding(10)
                }.padding(10)
            }
            .navigationTitle("Menu")
            .toolbar{
                NavigationLink(destination: MenuItemsOptionView(menuViewModel: allMenuData)
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
    @EnvironmentObject var menuItems:MenuItemList
    @EnvironmentObject var menuCategoryWithOption:MenuCatgoryAndOption
    
    init(title: String) {
        self.title = title
    }
    
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View{
        Section{
            if menuCategoryWithOption.isSelected {
                Section(header: Text(title).font(.largeTitle)){
                    LazyVGrid(columns: columns) {
                        ForEach(menuItems.MenuItemsList){ menuItem in
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
            }else{
                Text("\(title) is not selected")
            }
        }
    }
}



