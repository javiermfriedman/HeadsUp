//
//  CelebrityArrayClass.swift
//  Heads UP
//
//  Created by Javier Friedman on 7/23/24.
//


import SwiftUI


class arrayOfCelebs: ObservableObject {
        
    @Published var newCelebs: [CelebrityCard] = []
    @Published var usedCelebs: [CelebrityCard] = []
    
    init(){
        getUsers()
        newCelebs.shuffle()
    }
    
    func getUsers(){
        //add all the celebs to the array

        self.newCelebs = Data.celebrityData
    }
    
    func getCeleb() -> CelebrityCard {

        //if newcelebs are empty then restart cards shuffle and empty old array
        if(newCelebs.count == 0){
            print("WARNING MADE IT TO END OF LIST")
            newCelebs = usedCelebs
            newCelebs.shuffle()
            
        }
        
        //add the new card to the old celebs then return it
        return newCelebs.removeFirst()
        
    }
    
    func addCelebtoUSed(usedCeleb: CelebrityCard, newColor: Color) {
        print(newColor)
        let newCard = CelebrityCard(name: usedCeleb.name, picture: usedCeleb.picture, textColor: newColor)
        usedCelebs.append(newCard)

    }
}

