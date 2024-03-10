//
//  ContentView.swift
//  slots-challenger
//
//  Created by Alessandro Emanuel Ferreira de Souza on 10/03/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var credits = 1000
    @State var fruit = ["apple", "cherry", "star"]
    @State var slot1 = 1
    @State var slot2 = 1
    @State var slot3 = 1
    
    var body: some View {
                
        VStack {
            Spacer()
            
            Text("Slots Challenger")
            
            Spacer()
            
            Text("Credits \(credits)")
            
            HStack {
                Image("\(fruit[slot1])")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Image("\(fruit[slot2])")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Image("\(fruit[slot3])")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            
            Spacer()
            
            Button("Spin") {
                
                slot1 = Int.random(in: 0...2)
                slot2 = Int.random(in: 0...2)
                slot3 = Int.random(in: 0...2)
                
                if slot1 == slot2 && slot2 == slot3 {
                    //won
                    credits += 15
                } else {
                    //lose
                    credits -= 5
                }
            
            }
            .padding()
            .padding(.horizontal, 40.0)
            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            .background(.pink)
            .cornerRadius(25.0)
            .font(
                .system(
                    size: 18,
                    weight: .bold,
                    design: .default
                )
            )
            
            Spacer()

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
