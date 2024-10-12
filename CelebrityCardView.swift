//
//  CelebrityCardView.swift
//  Heads UP
//
//  Created by Javier Friedman on 7/23/24.
//

import SwiftUI

struct CelebrityCardView: View {
    @Binding var name: String
    @Binding var picture: String
    
var body: some View {
 

        ZStack{
            Color(.white)
                .opacity(0.97)
            VStack{
                if(picture != ""){
                    Image(picture)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250)
                        .cornerRadius(30)
                        .padding(.top, 40)
                } else {
                    
                    Rectangle()
                        .fill(.clear)
                        .frame(width: 250)
                        
                    
                }
            }
            
            VStack{
                if(name != ""){
                    Text(name)
                        .frame(width: 260, height: 50)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.bold)
                        .background(Color("LightBrown"))
                        .cornerRadius(8)
                        .shadow(color: .white, radius: 10, x: 0, y: 5)
                        .padding(.top,30)
                    Spacer()
                    
                }
            }
        }
        .frame(width: 300, height: 550)
        .cornerRadius(40)
    }



}

#Preview {
    CelebrityCardView(name: .constant("javi"), picture: .constant("leopic Small"))
}
