//
//  End.swift
//  Matching game
//
//  Created by StudentAM on 3/15/24.
//

import SwiftUI

struct End: View {
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
                    Text("😀")
                        .font(.system(size:(100)))
                    Text("Greate Job!")
                        .font(.title)
                    NavigationLink(destination: GameView().navigationBarBackButtonHidden(true), label:{
                        Text("Play Again")
                            .font(.title)
                            .padding(10)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    })
                }
            }
        }
    }
}

#Preview {
    End()
}
