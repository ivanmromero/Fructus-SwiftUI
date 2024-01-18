//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Ivan Romero on 18/01/2024.
//

import SwiftUI

struct FruitHeaderView: View {
    //MARK: - PROPERTIES
    let fruit: Fruit
    @State private var isAnimatingImage: Bool = false
    
    //MARK: - FUNCTIONS
    //MARK: - BODY
    var body: some View {
        ZStack(content: {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        })
        .frame(height: 440)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

//MARK: - PREVIEW
#Preview(traits: .fixedLayout(width: 375, height: 440)) {
    FruitHeaderView(fruit: fruitsData[0])
}
