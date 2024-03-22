//
//  GameView.swift
//  Matching game
//
//  Created by StudentAM on 3/15/24.
//

import SwiftUI

struct GameView: View {
    @State var emojis = ["😀", "😀" ,"😁", "😁", "😂", "😂", "🤣", "🤣", "😃", "😃", "😄", "😄",]
    @State private var Score: Int = 0
    @State private var pickOne: Int = -1
    @State private var pickTwo: Int = -1
    @State private var Flipp: [Bool] = Array(repeating: false, count: 12)
    let columns: [GridItem] = [
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: nil, alignment: nil),     
        GridItem(.fixed(50), spacing: nil, alignment: nil)

    ]
    var body: some View {
        NavigationView{
            ZStack{
                Circle()
                    .fill(Color.red)
                    .position(/*@START_MENU_TOKEN@*/CGPoint(x: 10.0, y: 10.0)/*@END_MENU_TOKEN@*/)
                Circle()
                    .fill(Color.green)
                    .position(CGPoint(x: 290.0, y: 680.0))
                VStack{
                    Spacer()
                    Text("Current Score: \(Score)")
                        .bold()
                    //                Spacer()
                    LazyVGrid(columns: columns){
                        ForEach(emojis.indices, id:\.self) { index in
                            Button(action: {test(index: index )}, label: {
                                Cards(emojis: emojis[index], Flipp: Flipp[index])
                            })
                        }
                    }
                    //                Spacer()
                    if Score == 6 {
                        HStack{
                            NavigationLink(destination: End().navigationBarBackButtonHidden(true), label:{
                                Text("Next")
                                 .font(.title)
                                 .padding()
                                 .background(Color.blue)
                                 .foregroundColor(.white)
                                 .cornerRadius(8)})
                            NavigationLink(destination: GameView().navigationBarBackButtonHidden(true), label:{
                                Text("Retry")
                                    .font(.title)
                                    .padding()
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(8)
                            })
                        }
                    }
                    Spacer()
                }
            }
        }
    }
    func test(index:Int){
        if  pickOne == -1 || pickTwo == -1{
            if pickOne == -1 {
                pickOne = index
                Flipp[index] = true
            }
            else{
                pickTwo = index
                Flipp[index] = true
                if emojis[pickOne] == emojis[pickTwo] {
                                Score += 1
                                pickOne = -1
                                pickTwo = -1
                            }
                            else {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                    Flipp[pickOne] = false
                                    Flipp[pickTwo] = false
                                    pickOne = -1
                                    pickTwo = -1
                                }
                
                            }
            }
            
//
        }
    }
}

#Preview {
    GameView()
}
