//
//  DatePickerView.swift
//  LittleLemonAppExercise
//
//  Created by kedk on 7/11/23.
//

import SwiftUI

struct DatePickerView: View {
    @State var selectedDate = Date()
    
    var body: some View {
        VStack{
            Form {
                HStack{
                    DatePicker(
                        selection: $selectedDate,
                        in: Date()...,
                        displayedComponents: [.date,.hourAndMinute]
                    ){

                    }
                    Button {
                        print("Selected a Date")
                    } label: {
                        HStack{
                            Image(systemName: "rectangle.portrait.and.arrow.right")
                            Text("Done")
                        }
                    }.padding(20)

                }
                Label {
                    Text("Selected Date: \(selectedDate.formatted(date: .long, time:.complete))")
                } icon: {
                    
                }
                
            }
            Image(systemName: "globe.badge.chevron.backward")
            Image("Bruschetta").frame(width: 10,height: 10)
        }
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
