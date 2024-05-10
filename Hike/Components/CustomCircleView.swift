//
//  CustomCircleView.swift
//  Hike
//
//  Created by Анастасия Кутняхова on 08.05.2024.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimationGradient: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            .customIndigoMedium,
                            .customSalmonLight
                        ],
                        startPoint: isAnimationGradient ? .topLeading : .bottomLeading,
                        endPoint: isAnimationGradient ? .bottomTrailing : .topTrailing
                    )
                )
                .onAppear {
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        isAnimationGradient.toggle()
                    }
                }
            MotionAnimationView()
        } //: ZSTACK
        .frame(width: 256, height: 256)
        
    }
}

#Preview {
    CustomCircleView()
}
