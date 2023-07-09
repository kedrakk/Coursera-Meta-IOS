//
//  ReservationForm.swift
//  reservation
//
//  Created by kedk on 7/9/23.
//

import SwiftUI

struct ReservationForm: View {
    @State var customerName:String = ""
    var body: some View {
        Form(content: {
            TextField(
                "Type your name",
                text: $customerName,
                onEditingChanged: { status in
                    print(status)
                }
            ).onChange(of: customerName) { newValue in
                print(newValue)
            }.onSubmit {
                print("Submitted")
            }
        }).padding()
    }
}

struct ReservationForm_Previews: PreviewProvider {
    static var previews: some View {
        ReservationForm()
    }
}
