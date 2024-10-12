//
//  CelebrityStats.swift
//  Heads UP
//
//  Created by Javier Friedman on 7/23/24.
//

import SwiftUI

struct CelebrityStats: View {
    
    @ObservedObject var vm: arrayOfCelebs
    
    @Binding var showCardView: Bool
    @Binding var displayStats: Bool
    @Environment(\.dismiss) var dismiss
    
    
    
    var body: some View {
        ZStack{
            Color("LightBrown")
                .ignoresSafeArea()
            VStack{
             
                Spacer()
                Text("These Are You Results")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .shadow(color: .white, radius: 10, x: 0, y: 5)
                ScrollView{
                    VStack{
                        ForEach(vm.usedCelebs) { card in
                            Text(card.name)
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundStyle(card.textColor)
                            
                            
                            
                        }
                        
                    }
                    .font(.title)
                    
                }

              
                Spacer()
                Button{
                    showCardView = false
                    displayStats = false
                
                    
                }label: {
                    ZStack{
                        
                   
                        
                        
                        Text("Go Back To Main Screen")
                            .fontWeight(.bold)
                            .frame(width: 230, height: 30)
                            .background(Color.white)
                            .cornerRadius(10)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 10)
                            )

                            
                        
                    }
                }
            }
            
        }
    }
}

#Preview {
   
    
    CelebrityStats(vm: MockArrayOfCelebs(), showCardView: .constant(true), displayStats: .constant(false))
}
