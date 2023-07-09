//
//  ContentView.swift
//  reservation
//
//  Created by kedk on 7/9/23.
//

import SwiftUI

struct ContentView: View {
    @State var personCount: Int = 1
    
    var body: some View {
        VStack {
            ReservationForm()
            MyCustomView()
            Stepper(
                "Reservation for \(personCount)") {
                    personCount = personCount + 1
                } onDecrement: {
                    personCount = (personCount == 1) ? 1 : personCount - 1
                }

//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
