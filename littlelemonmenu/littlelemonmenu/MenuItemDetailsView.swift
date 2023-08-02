//
//  MenuItemDetailsView.swift
//  littlelemonmenu
//
//  Created by kedk on 7/31/23.
//

import SwiftUI

struct MenuItemDetailsView: View {
    let menuItem:MenuItem
    
    init(menuItem: MenuItem) {
        self.menuItem = menuItem
    }
    
    var body: some View {
        ScrollView{
            VStack{
                Text(menuItem.title).font(.largeTitle)
                Image("LittleLemonlogo").resizable()
                    .frame(width: 150,height: 260)
                VStack{
                    Text("Price:").fontWeight(.bold)
                    Text("\(menuItem.price,specifier: "%.2f")")
                }.padding()
                VStack{
                    Text("Ordered:").fontWeight(.bold)
                    Text("\(menuItem.orderCount)")
                }.padding()
                VStack{
                    Text("Ingredients:").fontWeight(.bold)
                        ForEach(menuItem.ingredient,id: \.self) { menu in
                            Text(menu.rawValue)
                        }
                }.padding()
            }
        }
    }
}

struct MenuItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDetailsView(
            menuItem:MenuItem(
                price: 60.0,
                title: "Drink 1",
                menuCategory: MenuCategory.drink,
                orderCount: 1000,
                priceInt: 60,
                ingredient: [Ingredient.spinach]
            )
        )
    }
}
