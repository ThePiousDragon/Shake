//
//  ContentView.swift
//  Sonnets
//
//  Created by dimitar on 09/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State var sonnetOfTheDay = chosenSonnet
    @State var sonnetDisplayed = chosenSonnet.text
    @State var sonnetNumber = chosenSonnet.roman
    @State var sonnetAuthor = "William Shakespeare"

    var body: some View {
        VStack {
            Text(sonnetNumber)
                .padding()
            Text(sonnetDisplayed)
                .fixedSize()
            Text(sonnetAuthor)
                .italic()
                .padding()
        }
        .padding()
        .onReceive(NotificationCenter.default.publisher(for: .NSCalendarDayChanged)) { _ in
            self.sonnetOfTheDay = updateSonnet()
            self.sonnetDisplayed = sonnetOfTheDay.text
            self.sonnetNumber = sonnetOfTheDay.roman
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
