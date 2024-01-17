//
//  FruitCardView.swift
//  Fructus
//
//  Created by Ivan Romero on 16/01/2024.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: - PROPERTIES
    @State private var isAnimating: Bool = false
    var fruitModel: Fruit
    
    //MARK: - FUNCTIONS
    //MARK: - BODY
    var body: some View {
        ZStack {
            VStack (spacing: 20) {
                // FRUIT: IMAGE
                Image(fruitModel.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1 : 0.6)
                // FRUIT: TITLE
                Text(fruitModel.title)
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.15), radius: 2, x: 2, y: 2)
                // FRUIT: HEADLINE
                Text(fruitModel.headline)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                // BUTTON: START
                StartButtonView()
            }
        }
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        })
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(colors: fruitModel.gradientColors, startPoint: .top, endPoint: .bottom))
        .clipShape(.rect(cornerRadius: 20))
        .padding(.horizontal, 20)
    }
}

//MARK: - PREVIEW
#Preview (traits: .sizeThatFitsLayout) {
    FruitCardView(fruitModel: fruitsData[1])
        .previewLayout(.fixed(width: 320, height: 640))
}
