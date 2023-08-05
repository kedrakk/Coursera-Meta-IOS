//
//  MenuItemsOptionView.swift
//  littlelemonmenu
//
//  Created by kedk on 7/31/23.
//

import SwiftUI

//enum categories:String,CaseIterable,Identifiable{
//    var id : String { UUID().uuidString }
//    case food = "Food"
//    case drink = "Drink"
//    case desert = "Desert"
//}

enum SortOptions:String,CaseIterable,Identifiable{
    var id : String { UUID().uuidString }
    case mostPopular = "Most Popular"
    case price = "Price $-$$$"
    case name = "A-Z"
}

struct MenuItemsOptionView: View {
    
    @StateObject var menuViewModel:MenuViewModel
    //@State private var selectedFilter:SortOptions = SortOptions.name
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        Section{
            VStack{
                List{
                    Section(header: Text("SELECTED CATEGORIES")) {
                        ForEach(menuViewModel.menuCategoryWithOptions.indices, id: \.self){index in
                            Button {
                                self.menuViewModel.menuCategoryWithOptions[index].isSelected.toggle()
                            } label: {
                                CategoryItemView()
                            }.environmentObject(menuViewModel.menuCategoryWithOptions[index])
                            
                        }
                    }
                    Section(header: Text("SORT BY")) {
                        ForEach(SortOptions.allCases){value in
                            Button {
                                self.menuViewModel.selectedSortOption = value
                            } label: {
                                HStack{
                                    Text(value.rawValue)
                                    Spacer()
                                    if menuViewModel.selectedSortOption == value {
                                        Image(systemName: "checkmark").foregroundColor(.blue)
                                    }
                                }
                            }

                        }
                    }

                }.listStyle(.grouped)
            }
        }.navigationBarTitle("Filter")
            .navigationBarBackButtonHidden(true)
            .toolbar{
                Button("Done") {
                    if(menuViewModel.selectedSortOption == SortOptions.name){
                        menuViewModel.AllFoodMenu.MenuItemsList.sort(by: {
                            $0.title < $1.title
                        })
                        menuViewModel.AllDrinkMenu.MenuItemsList.sort(by: {
                            $0.title < $1.title
                        })
                        menuViewModel.AllDesertMenu.MenuItemsList.sort(by: {
                            $0.title < $1.title
                        })
                    }
                    else if(menuViewModel.selectedSortOption == SortOptions.price){
                        menuViewModel.AllFoodMenu.MenuItemsList.sort(by: {
                            $0.price > $1.price
                        })
                        menuViewModel.AllDrinkMenu.MenuItemsList.sort(by: {
                            $0.price > $1.price
                        })
                        menuViewModel.AllDesertMenu.MenuItemsList.sort(by: {
                            $0.price > $1.price
                        })
                    }else{
                        menuViewModel.AllFoodMenu.MenuItemsList.sort(by: {
                            $0.orderCount > $1.orderCount
                        })
                        menuViewModel.AllDrinkMenu.MenuItemsList.sort(by: {
                            $0.orderCount > $1.orderCount
                        })
                        menuViewModel.AllDesertMenu.MenuItemsList.sort(by: {
                            $0.orderCount > $1.orderCount
                        })
                    }
                    self.presentationMode.wrappedValue.dismiss()
                }
            }
        
    }
}


struct CategoryItemView : View{
    @EnvironmentObject var menuCategoryWithOption:MenuCatgoryAndOption
    var body: some View{
        HStack{
            Text(menuCategoryWithOption.menuCategory.rawValue)
            Spacer()
            if menuCategoryWithOption.isSelected{
                Image(systemName: "checkmark").foregroundColor(.blue)
            }
        }
    }
}

//struct MenuItemsOptionView_Previews: PreviewProvider {
//    static var previews: some View {
//        MenuItemsOptionView(menuViewModel: MenuViewModel())
//    }
//}
