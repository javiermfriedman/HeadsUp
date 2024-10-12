//
//  CelebrityInfoView.swift
//  Heads UP
//
//  Created by Javier Friedman on 7/23/24.
//

import SwiftUI

struct CelebrityInfoView: View {
    @State var showCardView: Bool = false
    @State var displayStats: Bool = false
    
    var dragTOstart: some Gesture {
        DragGesture()
            .onEnded { value in
                if value.translation.height < -200 {
                    showCardView.toggle()
                    return
                } 
            }
    }
    
    var body: some View {

                ZStack{
                    Color("LightBrown")
                        .ignoresSafeArea()
                    VStack {
                        
                       
                        Text("This is the Celebrity Deck")
                            .font(.title)
        
                                
                            
                        
                        Spacer()
                            .padding(.top, 30)
                            Spacer()
                            Spacer()
                            Text("Swipe up to start")
                                .font(.largeTitle)
                                .padding()
                            
                    }
                
              
                   
                    
                    
                }
                .gesture(dragTOstart)
                .fullScreenCover(isPresented: $showCardView) {
                    CelebrityView(showCardView: $showCardView, displayStats: $displayStats)
                        
                }
            }
            
    
}

#Preview {
    CelebrityInfoView()
}
