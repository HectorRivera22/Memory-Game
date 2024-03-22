//
//  Cards.swift
//  Matching game
//
//  Created by StudentAM on 3/22/24.
//

import SwiftUI

struct Cards: View {
    var emojis: String
    var Flipp: Bool
    var body: some View {
        
        
        ZStack {
            Rectangle()
                .fill(Flipp == true ? Color(UIColor.clear) : Color.blue)
            .frame(width: 50, height: 50)
        
            if Flipp == true{
                Text("\(emojis)")
                    .font(.largeTitle)
            }
        }
    }
}

#Preview {
    Cards(emojis: "😀", Flipp: true)
}
