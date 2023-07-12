//
//  MyTabView.swift
//  SwiftNavigation
//
//  Created by kedk on 7/12/23.
//

import SwiftUI

struct MyTabView: View {
    var body: some View {
        VStack{
            TabView {
                Text("This is share view")
                    .tabItem {
                        Label("Share", systemImage: "shareplay")
                    }
                Text("This is trash view")
                    .tabItem {
                        Label("Trash", systemImage: "trash")
                    }
            }
        }
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
