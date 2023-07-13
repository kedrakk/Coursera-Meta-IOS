//
//  MultiLevelTestView.swift
//  LittleLemonAppExercise
//
//  Created by kedk on 7/11/23.
//

import SwiftUI

struct MultiLevelTestView: View {
    var body: some View {
        HStack{
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 50,height: 50)
            Text("Rectangle One")
                .foregroundColor(.white)
                .padding(20)
                .background(.yellow)
                .onTapGesture {
                    print("Hello")
                }
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100,height: 30)
        }
    }
}

struct MultiLevelTestView_Previews: PreviewProvider {
    static var previews: some View {
        MultiLevelTestView()
    }
}
