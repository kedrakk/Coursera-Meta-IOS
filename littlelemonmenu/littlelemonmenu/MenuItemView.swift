//
//  MenuItemView.swift
//  littlelemonmenu
//  Created by kedk on 7/31/23.
//

import SwiftUI

struct MenuItemView: View {
   
    var body: some View {
        NavigationView{
            Form{
                Section {
                    
                }
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

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView()
    }
}
