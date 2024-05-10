//
//  CardView.swift
//  Hike
//
//  Created by Анастасия Кутняхова on 07.05.2024.
//

import SwiftUI

struct CardView: View {
    
    // MARK: - PROPERTIES
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet: Bool = false
    
    // MARK: - FUNCTIONS
    func randomImage() {
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while imageNumber == randomNumber
        
        imageNumber = randomNumber
    }
    var body: some View {
        
        ZStack {
            CustomBackgroundView()
            
            VStack {
                // MARK: - HEADER
                
                VStack(alignment: .leading) {
                    
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [
                                        .customGrayLight,
                                        .customGrayMedium
                                    ],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                        )
                        
                        Spacer()
                        
                        Button {
                            isShowingSheet.toggle()
                        } label: {
                            CustomButtonView()
                        }
                        .sheet(isPresented: $isShowingSheet) {
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium, .large])
                        }
                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                } //: HEADER
                .padding(.horizontal, 30)
                
                // MARK: - MAIN CONTENT
                
                ZStack {
                    CustomCircleView()
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                }
                // MARK: - FOOTER
                
                Button {
                    // ACTION: GENERATE A RANDOM NUMBER
                    print("The button was pressed.")
                    randomImage()
                } label: {
                    Text("Explore more")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [
                                    .customGreenLight,
                                    .customGreenMedium
                                ],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                }
                .buttonStyle(GradientButton())
                
            } // VSSTACK
        } // CARD:
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
