//
//  Player.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

class Player {
    
    var name: String
    var hand: Hand
    
    init(name: String, hand: Hand) {
        self.hand = hand
        self.name = name
    }
    
    func hasCards() -> Bool {
        if hand.size == 0 {
            return false
        } else {
            return true
        }
    }
    
    func flip() -> Card? {
        if hasCards() == true {
            return hand.flip()
        } else {
            return nil
        }
    }
    
    func give(card: Card) {
        return hand.give(card: card)
    }
    
    func lose(card: Card) {
        return hand.lose(card: card)
    }
    
    
 
}

