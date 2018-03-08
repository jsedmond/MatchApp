//
//  CardModel.swift
//  MatchApp
//
//  Created by Jacob Edmond on 2/17/18.
//  Copyright © 2018 Jacob Edmond. All rights reserved.
//

import Foundation

class CardModel {
    
    func getCards() -> [Card] {
        
        // Declare an array to store the generated cards
        var generatedCardsArray = [Card]()
        
        // Randomly generate pairs of cards
        for _ in 1...8 {
            
            // Get a random number
            let randomNumber = arc4random_uniform(13) + 1
            
            // Log the number
            print("generating a random number \(randomNumber)")
            
            // Create the first card object
            let cardOne = Card()
            cardOne.imageName = "card\(randomNumber)"
            
            generatedCardsArray.append(cardOne)
            
            // Create the second card object
            let cardTwo = Card()
            cardTwo.imageName = "card\(randomNumber)"
            
            generatedCardsArray.append(cardTwo)
        
            // OPTIONAL: Make it so we only have unique pairs of cards
        }
        
        // TODO: Randomize the array
        
        print(generatedCardsArray.count)
        
        // Return the array
        return generatedCardsArray
    }
    
}
