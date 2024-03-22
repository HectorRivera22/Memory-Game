//
//  ContentView.swift
//  Matching game
//
//  Created by StudentAM on 3/14/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Image("bears")
                    VStack {
                        Spacer()
                        Text("EmojiMatch")
                            .frame(width: 200, height: 60)
                            .font(.title)
                            .background(Color.orange)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                        Spacer()
                        NavigationLink(destination: GameView().navigationBarBackButtonHidden(true)){
                            Text("Start")
                                .frame(width: 200, height: 60)
                                .font(.title)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                        Spacer()
                    }
                }
        }
//        .navigationTitle("Next Page")
//        .padding()
    }
}

#Preview {
    ContentView()
}
