//
//  ContentView.swift
//  Sonnets
//
//  Created by dimitar on 09/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text(randomSonnet.roman)
                .padding()
            Text(randomSonnet.text)
                .fixedSize()
            Text(randomSonnet.author)
                .italic()
                .padding()
        }
        .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
