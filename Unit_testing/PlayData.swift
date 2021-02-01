//
//  PlayData.swift
//  Unit_testing
//
//  Created by DDDD on 31/01/2021.
//

import Foundation

class PlayData {
    var allWords = [String]()
    
    
    init() {
        
        allWords = allWords.filter {$0 != "" }
        
        if let path = Bundle.main.path(forResource: "text", ofType: "txt") {
            if let plays = try? String(contentsOfFile: path) {
                allWords = plays.components(separatedBy: CharacterSet.alphanumerics.inverted)
            }
        }
    }
}
