//
//  SettingsView.swift
//  Hike
//
//  Created by Анастасия Кутняхова on 09.05.2024.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            // MARK: - SECTION: HEADER
            
            Section {
                HStack {
                    Spacer()
                    
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        
                        Text("Editors' choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .customGreenLight,
                            .customGreenMedium,
                            .customGreenDark
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .padding(.top, 8)
                
                VStack(spacing: 8) {
                    Text("Where can you find \nperfect traks?")
                        .font(.title2)
                    .fontWeight(.heavy)
                    
                    Text("The hike looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots! It's time for a walk")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            } //: HEADER
            .listRowSeparator(.hidden)
            
            // MARK: - SECTION: ICONS
            
            // MARK: - SECTION: ABOUT
            Section(
                header: Text("About the App"),
                footer: HStack {
                    Spacer()
                Text("Copyright © All right reserved.")
                    Spacer()
                }
                    .padding(.vertical, 8)
            ) {
            // 1: Basic Labeled content
//                LabeledContent("Application", value: "Hike")
            // 2: Advanced Labeled content
                LabeledContent {
                    // Content
                    Text("Hike")
                        .foregroundStyle(.primary)
                        .fontWeight(.heavy)
                } label: {
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width: 30, height: 30)
                                .foregroundStyle(.blue)
                            Image(systemName: "apps.iphone")
                                .foregroundStyle(.white)
                                .fontWeight(.semibold)
                        }
                        Text("Application")
                    }
                }
                
            } //: SECTION
        } //: LIST
    }
}

#Preview {
    SettingsView()
}
