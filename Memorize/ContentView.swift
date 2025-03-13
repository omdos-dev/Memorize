//
//  ContentView.swift
//  Memorize
//
//  Created by Omar ElDessouki on 3/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View{
    var isFaceUp: Bool = false
    
    var body: some View{
        if isFaceUp{
            ZStack{
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                Text("Hamada").font(.largeTitle)
            }
        } else{
            RoundedRectangle(cornerRadius: 12)
        }
            
    }
}








#Preview {
    ContentView()
}
