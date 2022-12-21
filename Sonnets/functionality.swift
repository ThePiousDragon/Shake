//
//  functionality.swift
//  Sonnets
//
//  Created by dimitar on 21/12/2022.
//

import Foundation

struct Sonnet {
    let roman: String
    let text: String
    let author = "William Shakespeare"
}
func updateSonnet() -> Sonnet {
    let shakespeareBirthYear = 1564
    let date = Date() // now
    let cal = Calendar.current
    let day = cal.ordinality(of: .day, in: .year, for: date)!
    let chosenSonnetIndex = ((day * shakespeareBirthYear) % sonnets.count)
    let chosenSonnet = sonnets[chosenSonnetIndex]
    return(chosenSonnet)
}

var chosenSonnet = updateSonnet()
