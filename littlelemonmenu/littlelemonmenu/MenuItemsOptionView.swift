//
//  MenuItemsOptionView.swift
//  littlelemonmenu
//
//  Created by kedk on 7/31/23.
//

import SwiftUI

enum categories:String,CaseIterable,Identifiable{
    var id : String { UUID().uuidString }
    case food = "Food"
    case drink = "Drink"
    case desert = "Desert"
}

enum sortOptions:String,CaseIterable,Identifiable{
    var id : String { UUID().uuidString }
    case mostPopular = "Most Popular"
    case price = "Price $-$$$"
    case name = "A-Z"
}

struct MenuItemsOptionView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        Section{
            VStack{
                List{
                    Section(header: Text("SELECTED CATEGORIES")) {
                        ForEach(categories.allCases){value in
                            Text(value.rawValue)
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
                    self.presentationMode.wrappedValue.dismiss()                        }
            }
        
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView()
    }
}
