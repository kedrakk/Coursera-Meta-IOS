//
//  ContentView.swift
//  SwiftNavigation
//
//  Created by kedk on 7/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Exercise 1")
                NavigationLink("Do something") {
                    NewView()
                }.navigationTitle("Little Lemon")
            }
        }
    }
}

struct NewView: View {
    var body: some View {
        MyTabView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
