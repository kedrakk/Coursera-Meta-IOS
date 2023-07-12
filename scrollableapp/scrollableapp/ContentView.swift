//
//  ContentView.swift
//  scrollableapp
//
//  Created by kedk on 7/12/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var model = Model()
    var body: some View {
        VStack {
            List{
                ForEach(model.meals){meal in
                    Text(meal.name)
                }
            }
        }
        .padding()
    }
}

struct Item:Identifiable{
    let id = UUID()
    let name: String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

class Model: ObservableObject{
   @Published var meals: [Item] = menuItems()
    
    static func menuItems()->[Item]{
        return [
            Item(name: "Lasagna"),
            Item(name: "Fettuccini Alfredo"),
            Item(name: "Spaghetti"),
            Item(name: "Avocato Toast"),
            Item(name: "Tortellini"),
            Item(name: "Pizza")
        ]
    }
}
