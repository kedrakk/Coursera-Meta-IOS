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

enum sortOptions:String,CaseIterable,Identifiable{
    var id : String { UUID().uuidString }
    case mostPopular = "Most Popular"
    case price = "Price $-$$$"
    case name = "A-Z"
}

struct MenuItemsOptionView: View {
    
    @StateObject var menuViewModel:MenuViewModel
    
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
                        ForEach(sortOptions.allCases){value in
                            Text(value.rawValue)
                        }
                    }

                }.listStyle(.grouped)
            }
        }.navigationBarTitle("Filter")
            .navigationBarBackButtonHidden(true)
            .toolbar{
                Button("Done") {
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
