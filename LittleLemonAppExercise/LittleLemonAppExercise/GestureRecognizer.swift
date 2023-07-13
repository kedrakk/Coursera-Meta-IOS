//
//  GestureRecognizer.swift
//  LittleLemonAppExercise
//
//  Created by kedk on 7/13/23.
//

import SwiftUI

struct GestureRecognizer: View {
    @State var flag:Bool = false
    var body: some View {
        Text("Tap Me")
            .font(.title)
            .padding(15)
            .background(flag ? Color.green:Color.yellow)
            .onTapGesture {
                flag.toggle()
            }
    }
}

struct GestureRecognizer_Previews: PreviewProvider {
    static var previews: some View {
        GestureRecognizer()
    }
}
