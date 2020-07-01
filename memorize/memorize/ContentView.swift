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
        HStack(spacing: 10, content: {
            ForEach(0..<4, content: {_ in
                ZStack(content: {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("👽")
                })
            })
        })
            .foregroundColor(.orange)
            .padding()
            .font(Font.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
