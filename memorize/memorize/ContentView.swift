//
//  ContentView.swift
//  memorize
//
//  Created by Ana Thayna Franca on 29/06/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) { index in
                CardView()
            }
        }
            .foregroundColor(.orange)
            .padding()
            .font(Font.largeTitle)
    }
}

struct CardView: View {
    var isFaceUP: Bool = true
    var body: some View {
        ZStack {
            if isFaceUP {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("👽")
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}

struct ContentViewPreviews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
