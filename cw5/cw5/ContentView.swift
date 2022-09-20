//
//  ContentView.swift
//  cw5
//
//  Created by Othman Alkous on 14/09/2022.
//

import SwiftUI

struct ContentView: View {
    let fruits = ["😁", "🤣", "🥲", "😎", "💩", "🤢"]
    @State var a = ""
    var body: some View {
        VStack {
            Text("اختر الايموجي")
                .padding()
            Text(a)
                .font(.largeTitle)
            ScrollView(.horizontal){
                HStack{
                    ForEach(fruits, id: \.self){ emoji in
                        Text(emoji)
                            .font(.largeTitle)
                            .frame(width: 60, height: 60)
                            .background(Color.gray)
                            .cornerRadius(100)
                            .padding()
                            .onTapGesture {
                                a = emoji
                            }
                    }
                }
            }
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
