//
//  cardsData.swift
//  Heads UP
//
//  Created by Javier Friedman on 7/23/24.
//

import Foundation
import SwiftUI

struct CelebrityCard: Identifiable{
    let id = UUID()
    let name: String
    let picture: String
    var textColor: Color
    
}

class MockArrayOfCelebs: arrayOfCelebs {
    override init() {
        super.init()
        
        // Initialize with mock data if needed
    }
}

struct Data {
    static let celebrityData = [
        CelebrityCard(name: "Emily Blunt", picture: "emily blunt", textColor: .white),
        CelebrityCard(name: "Gal Gadot", picture: "gal gadot", textColor: .white),
        CelebrityCard(name: "John Krasinski", picture: "john krazin", textColor: .white),
        CelebrityCard(name: "Rober Downey Jr.", picture: "RDJ", textColor: .white),
        CelebrityCard(name: "LeoNardo Dicaprio", picture: "leopic Small", textColor: .white),
        CelebrityCard(name: "Robert De Niro", picture: "diniro", textColor: .white),
        CelebrityCard(name: "Denzel Washington", picture: "denzel", textColor: .white),
        CelebrityCard(name: "Meryl Streep", picture: "Meryl-Streep-2018 Small", textColor: .white),
        CelebrityCard(name: "Tom Hanks", picture: "tomhanks", textColor: .white),
        CelebrityCard(name: "Cate Blanchett", picture: "blanchet", textColor: .white),
        CelebrityCard(name: "Audrey Hepburn", picture: "Audrey_Hepburn_1956", textColor: .white),
        CelebrityCard(name: "Kate Winslet", picture: "kate Sinwlet", textColor: .white),
        CelebrityCard(name: "Marilyn Monroe", picture: "Monroe", textColor: .white),
        CelebrityCard(name: "Julia Roberts", picture: "julia robert", textColor: .white),
        CelebrityCard(name: "Morgan Freeman", picture: "morgan freeman", textColor: .white),
        CelebrityCard(name: "Johnny Depp", picture: "Depp", textColor: .white),
        CelebrityCard(name: "Charles Chaplin", picture: "chaplin", textColor: .white),
        CelebrityCard(name: "Al Pacino", picture: "pacino", textColor: .white),
        CelebrityCard(name: "Harrison Ford", picture: "Hford", textColor: .white),
        CelebrityCard(name: "Will Smith", picture: "willsmith", textColor: .white),
        CelebrityCard(name: "Bruce Lee", picture: "Bruce_Lee_1973", textColor: .white),
        CelebrityCard(name: "Angelina Jolie", picture: "jolie", textColor: .white),
        CelebrityCard(name: "Natalie Portman", picture: "nPortman", textColor: .white),
        CelebrityCard(name: "Sandra Bullock", picture: "Bullock", textColor: .white),
        CelebrityCard(name: "Tom Cruise", picture: "cruise", textColor: .white),
        CelebrityCard(name: "Samuel L. Jackson", picture: "samJackson", textColor: .white),
        CelebrityCard(name: "Alec Baldwin", picture: "alec baldwin", textColor: .white),
        CelebrityCard(name: "Anna Kendrick", picture: "annakenderick", textColor: .white),
        CelebrityCard(name: "Anne Hathaway", picture: "hathway", textColor: .white),
        CelebrityCard(name: "Arnold Schwarzenegger", picture: "arnold swars", textColor: .white),
        CelebrityCard(name: "Ben Stiller", picture: "Ben Stiller", textColor: .white),
        CelebrityCard(name: "Benedict Cumberbatch", picture: "bendeci cumberbatch", textColor: .white),
        CelebrityCard(name: "Bill Murray", picture: "bill murray", textColor: .white),
        CelebrityCard(name: "Brad Pitt", picture: "bradd put", textColor: .white),
        CelebrityCard(name: "Bruce Willis", picture: "bruce willis", textColor: .white),
        CelebrityCard(name: "Cameron Diaz", picture: "CAM diasz", textColor: .white),
        CelebrityCard(name: "Chadwick Boseman", picture: "chadwick", textColor: .white),
        CelebrityCard(name: "Chris Hemsworth", picture: "chris hemsowrth", textColor: .white),
        CelebrityCard(name: "Emma Stone", picture: "Emma stoen", textColor: .white),
        CelebrityCard(name: "Emma Watson", picture: "emama wathson", textColor: .white),
        CelebrityCard(name: "George Clooney", picture: "clooney", textColor: .white),
        CelebrityCard(name: "Jake Gyllenhaal", picture: "gyllenahal", textColor: .white),
        CelebrityCard(name: "Jamie Foxx", picture: "Jamie Foxx", textColor: .white),
        CelebrityCard(name: "Jared Leto", picture: "JArLeto", textColor: .white),
        CelebrityCard(name: "Jennifer Aniston", picture: "Jenn annistan", textColor: .white),
        CelebrityCard(name: "Jennifer Lawrence", picture: "JenLaw", textColor: .white),
        CelebrityCard(name: "Jim Carrey", picture: "Jim Carey", textColor: .white),
        CelebrityCard(name: "Joaquin Phoenix", picture: "American-actor-Joaquin-Phoenix-2020", textColor: .white),
        CelebrityCard(name: "Keira Knightley", picture: "keira knichgltt", textColor: .white),
        CelebrityCard(name: "Liam Neeson", picture: "Liam nesson", textColor: .white),
        CelebrityCard(name: "Mads Mikkelsen", picture: "mads mikkelsoen", textColor: .white),
        CelebrityCard(name: "Mark Wahlberg", picture: "Mark Wallberg", textColor: .white),
        CelebrityCard(name: "Robin Williams", picture: "Robin WIlliams", textColor: .white),
        CelebrityCard(name: "Ryan Gosling", picture: "ry gosling", textColor: .white),
        CelebrityCard(name: "Scarlett Johansson", picture: "Scarlet Joh", textColor: .white),
        CelebrityCard(name: "Sylvester Stallone", picture: "stallone", textColor: .white),
        CelebrityCard(name: "Uma Thurman", picture: "Uma thruman", textColor: .white),
        CelebrityCard(name: "Willem Dafoe", picture: "Daafoe", textColor: .white),
        CelebrityCard(name: "Woody Allen", picture: "woddyAllen", textColor: .white),

        
        CelebrityCard(name: "Adam Sandler", picture: "adam sandler", textColor: .white),
        CelebrityCard(name: "Anya Taylor-Joy", picture: "anna taylor", textColor: .white),
        CelebrityCard(name: "Austin Butler", picture: "Austin_Butler,_The_Bikeriders,_2024", textColor: .white),
        CelebrityCard(name: "Ben Affleck", picture: "ben affleck", textColor: .white),
        CelebrityCard(name: "Blake Lively", picture: "blake lively", textColor: .white),
        CelebrityCard(name: "Bradley Cooper", picture: "bradley cooper", textColor: .white),
        CelebrityCard(name: "Christian Bale", picture: "bale", textColor: .white),
        CelebrityCard(name: "Chris Evans", picture: "chris evans", textColor: .white),
        CelebrityCard(name: "Chris Pratt", picture: "chrias pratt", textColor: .white),
        CelebrityCard(name: "Daniel Craig", picture: "daniel craig", textColor: .white),
        CelebrityCard(name: "Daisy Ridley", picture: "daisy ridley", textColor: .white),
        CelebrityCard(name: "Dwayne Johnson", picture: "dwayne johnson", textColor: .white),
        CelebrityCard(name: "Drew Barrymore", picture: "drew barrymore", textColor: .white),
        CelebrityCard(name: "Edward Norton", picture: "edward norton", textColor: .white),
        CelebrityCard(name: "Florence Pugh", picture: "pugh", textColor: .white),
        CelebrityCard(name: "Glen Powell", picture: "powell", textColor: .white),
        CelebrityCard(name: "Halle Berry", picture: "halle berry", textColor: .white),
        CelebrityCard(name: "Heath Ledger", picture: "heath ledger", textColor: .white),
        CelebrityCard(name: "Hugh Jackman", picture: "jacman", textColor: .white),
        CelebrityCard(name: "Jacob Elordi", picture: "elordi", textColor: .white),
        CelebrityCard(name: "James Franco", picture: "james franco", textColor: .white),
        CelebrityCard(name: "Jessica Alba", picture: "jessica alba", textColor: .white),
        CelebrityCard(name: "John Travolta", picture: "john travolta", textColor: .white),
        CelebrityCard(name: "Jonah Hill", picture: "jonahhill", textColor: .white),
        CelebrityCard(name: "Keanu Reeves", picture: "keanu reves", textColor: .white),
        CelebrityCard(name: "Kevin Spacey", picture: "kevinspacey", textColor: .white),
        CelebrityCard(name: "Margot Robbie", picture: "Marogt robbie", textColor: .white),
        CelebrityCard(name: "Matt Damon", picture: "matt damon", textColor: .white),
        CelebrityCard(name: "Melissa McCarthy", picture: "mellisa mcarthy", textColor: .white),
        CelebrityCard(name: "Megan Fox", picture: "meg fox", textColor: .white),
        CelebrityCard(name: "Nicolas Cage", picture: "nick cage", textColor: .white),
        CelebrityCard(name: "Orlando Bloom", picture: "orlando bloom", textColor: .white),
        CelebrityCard(name: "Owen Wilson", picture: "owen wilson", textColor: .white),
        CelebrityCard(name: "Rachel McAdams", picture: "rachel macadam", textColor: .white),
        CelebrityCard(name: "Ryan Reynolds", picture: "reynolds", textColor: .white),
        CelebrityCard(name: "Russell Crowe", picture: "ressel crowe", textColor: .white),
        CelebrityCard(name: "Shia LaBeouf", picture: "shia labeouf", textColor: .white),
        CelebrityCard(name: "Steve Carell", picture: "steve carrell", textColor: .white),
        CelebrityCard(name: "Sydney Sweeney", picture: "sweeny", textColor: .white),
        CelebrityCard(name: "Timothée Chalamet", picture: "chalamet", textColor: .white),
        CelebrityCard(name: "Tom Holland", picture: "Tomorrow holand", textColor: .white),
        CelebrityCard(name: "Channing Tatum", picture: "tatum", textColor: .white),
        CelebrityCard(name: "Vin Diesel", picture: "vin disiel", textColor: .white),
        CelebrityCard(name: "Will Ferrell", picture: "will farrell", textColor: .white),
        CelebrityCard(name: "Zendaya", picture: "zendaya", textColor: .white)


    ]
    
}
