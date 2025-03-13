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
    @State var isFaceUp = false
    
    var body: some View{
        ZStack{
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp{
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("Hamada").font(.largeTitle)
            } else{
                base.fill()
            }
        }.onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}








#Preview {
    ContentView()
}
