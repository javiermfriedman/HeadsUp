//
//  CelebrityView.swift
//  Heads UP
//
//  Created by Javier Friedman on 7/23/24.
//

import SwiftUI

struct CelebrityView: View {
    @Binding var showCardView: Bool
    @StateObject var vm = arrayOfCelebs()
    @State var name = ""
    @State var picture = ""
    @State var background: Color = Color("LightBrown")
    @State var displayCountDown: Bool = true
    @State private var countdown: Int = 3
    @State var displayTimer: Bool = false
    @State private var timeLeft: Int = 5
    @Binding var displayStats: Bool
    @State var canSwipe: Bool = false
    
    // MARK: - Gestures
    var dragForGame: some Gesture {
        DragGesture()
            .onEnded { value in
                if canSwipe {
                    if value.translation.height > 100 {
                        updateCard(SwipedUp: 0)
                    } else if value.translation.height < -100 {
                        updateCard(SwipedUp: 1)
                    }
                }
            }
    }
    
    // MARK: - Body
    var body: some View {
        ZStack {
            background
                .ignoresSafeArea()
            
            Rectangle()
                .fill(Color(.brown))
                .cornerRadius(40)
                .padding(.horizontal, 20)
                .padding(.vertical, 40)
            VStack{
                if displayTimer {
                    Text("Time Left: \(timeLeft)")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.black)
                        .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                        .fontWeight(.medium)
                        .padding(.top,60)
                        
                }
                Spacer()
                
                
            }

                
            
            ZStack {

                    CelebrityCardView(name: $name, picture: $picture)
                        .shadow(color: .black, radius: 10, x: 0, y: 5)
                        .transition(.slide)
  
                
                if displayCountDown {
                    Text("\(countdown)")
                        .foregroundStyle(.black)
                        .font(.largeTitle)
                        .transition(.scale)
                }
                
                VStack {
                    HStack {
                        Button {
                            showCardView.toggle()
                        } label: {
                            Image(systemName: "xmark.circle")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .padding(.leading, 20)
                                .padding(.bottom, 40)
                                .foregroundColor(.black)
                        }
                        
                       
                        
                    
                        Spacer()
                    }
                   
                    
                    Spacer()
                }
            }
            .gesture(canSwipe ? dragForGame : nil)
        }
        .onAppear(perform: startCountdown)
        .sheet(isPresented: $displayStats) {
            CelebrityStats(vm: vm, showCardView: $showCardView, displayStats: $displayStats)
        }
    }
    
    // MARK: - Timer Methods
    private func startTimer() {
        displayTimer = true
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            if timeLeft > 0 {
                timeLeft -= 1
            } else {
                displayTimer.toggle()
                displayStats.toggle()
                timer.invalidate()  // Invalidate the timer when it reaches 0
            }
        }
    }
    
    private func startCountdown() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            if countdown > 0 {
                countdown -= 1
            } else {
                displayCountDown = false
                timer.invalidate()
                getFirstCard()
                startTimer()  // Start the timer after the countdown ends
                canSwipe = true  // Enable swiping after countdown and timer start
            }
        }
    }
    
    // MARK: - Card Methods
    private func getFirstCard() {
        let tempCeleb = vm.getCeleb()
        self.name = tempCeleb.name
        self.picture = tempCeleb.picture
    }
    
    private func updateCard(SwipedUp: Int) {
        let newColor: Color
        switch SwipedUp {
        case 0:
            newColor = .red
        case 1:
            newColor = .green
        default:
            newColor = .yellow
        }
        
        withAnimation {
            background = newColor
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            withAnimation {
                background = Color("LightBrown")
            }
        }
        
        // Send the celeb on the screen + the color just animated to used celeb list
        let usedCeleb = CelebrityCard(name: name, picture: picture, textColor: newColor)
        vm.addCelebtoUSed(usedCeleb: usedCeleb, newColor: newColor)
        
        // Set the next celeb
        let tempCeleb = vm.getCeleb()
        self.name = tempCeleb.name
        self.picture = tempCeleb.picture
    }
}

#Preview {
    CelebrityView(showCardView: .constant(true), displayStats: .constant(false))
}
