//
//  ContentView.swift
//  Heads UP
//
//  Created by Javier Friedman on 7/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Rectangle()
       
            NavigationView {
                ScrollView {
                    VStack{
                        cardHolder(Name: "Actors", nextController: CelebrityInfoView(), color: Color("LightBrown"))
                        cardHolder(Name: "Movies", nextController: MovieView(), color: .indigo)
                        cardHolder(Name: "Guess the Song", nextController: MovieView(), color: .green)
                        cardHolder(Name: "ur moms", nextController: MovieView(), color: .cyan)
                        cardHolder(Name: "places", nextController: MovieView(), color: .teal)
                    }
                    
                    
                    
                    
                 
              
                }
                .navigationBarTitle("Different Decks")
                
                
                
                
         
                
            }
           
        }
    }
}

#Preview {
    ContentView()
}

//
struct cardHolder<Destination: View>: View {
    let Name: String
    let nextController: Destination
    let color: Color
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.gray)
                .frame(height: 200)
            VStack {
                NavigationLink(destination: nextController) {
                    ZStack {
                        Rectangle()
                            .fill(color)
                            .frame(height: 180)
                            .padding(10)
                        Text(Name)
                            .font(.title)
                            .fontWeight(.bold)
                            .shadow(radius: 10)
                            .foregroundStyle(.black)
                    }
                }
            }
        }
    }
}

