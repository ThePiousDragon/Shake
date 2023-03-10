//
//  SonnetsApp.swift
//  Sonnets
//
//  Created by dimitar on 09/10/2022.
//

import SwiftUI

@main
struct SonnetsApp: App {
    var body: some Scene {
        MenuBarExtra("Sonnet of the day", image: "tornado") {
            ContentView()
        }
        .menuBarExtraStyle(.window)
    }
}
