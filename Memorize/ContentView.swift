//
//  ContentView.swift
//  Memorize
//
//  Created by Omar ElDessouki on 3/11/25.
//

import SwiftUI

struct ContentView: View {
    
    let emojisFood: Array<String> = ["🍎", "🍎", "🍊", "🍊", "🍇", "🍇", "🍒", "🍒"]
    let emojisParty: Array<String> = ["🎉", "🎉", "🎊", "🎊", "🥳", "🥳", "🪅", "🪅", "🎁", "🎁"]
    let emojisPets: Array<String> = ["🐶", "🐶", "🐱", "🐱", "🐰", "🐰", "🐹", "🐹", "🐕", "🐕", "🐩", "🐩"]
    
    @State var emojis: Array<String> = []

    let columns = Array(repeating: GridItem(.flexible()),count:5)
    
    var body: some View {

        VStack{
            Text("Memorize!").font(.largeTitle)
            Spacer()
            LazyVGrid(columns:columns, spacing: 61) {
                        ForEach(0..<emojis.count, id: \.self){ index in
                            CardView(content: emojis[index])
                        }
                    .foregroundColor(.teal)
                }
            Spacer()
            HStack{
                Button(action: {
                    emojis = emojisFood.shuffled()
                }){
                    VStack {
                        Image(systemName: "carrot.fill")
                        Text("Food")
                    }
                }
                Spacer()
                Button(action: {
                    emojis = emojisParty.shuffled()
                }){
                    VStack {
                        Image(systemName: "party.popper.fill")
                        Text("Party")
                    }
                }
                Spacer()
                Button(action: {
                    emojis = emojisPets.shuffled()
                }){
                    VStack {
                        Image(systemName: "pawprint.circle.fill")
                        Text("Pets")
                    }
                }
            }
            .imageScale(Image.Scale.large)
        }
        
        .padding()
    }
}

struct CardView: View{
    let content: String
    @State var isFaceUp = true
    
    var body: some View{
        ZStack{
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp{
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else{
                base.fill()
            }
        }.onTapGesture {
            isFaceUp.toggle()
        }
    }
}








#Preview {
    ContentView()
}
