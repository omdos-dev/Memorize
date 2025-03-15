//
//  ContentView.swift
//  Memorize
//
//  Created by Omar ElDessouki on 3/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let emojisFood: Array<String> = ["🍎", "🍊", "🍇", "🍒"]
        let emojisParty: Array<String> = ["🎉", "🎊", "🥳", "🪅"]
        let emojisPets: Array<String> = ["🐶", "🐱", "🐰", "🐹"]
        let themes: Array<Array> = [emojisFood, emojisParty, emojisPets]
       
        VStack{
            Text("Memorize!").font(.largeTitle)
            HStack {
                ForEach(0..<emojisFood.count, id: \.self){ index in
                    CardView(content: emojisFood[index])
                }
            }
            .foregroundColor(.teal)
            
            HStack{
                Button(action: {
                    
                }){
                    VStack {
                        Image(systemName: "carrot.fill")
                        Text("Food")
                    }
                }
                Spacer()
                Button(action: {
                    
                }){
                    VStack {
                        Image(systemName: "party.popper.fill")
                        Text("Party")
                    }
                }
                Spacer()
                Button(action: {
                    
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
    @State var isFaceUp = false
    
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
