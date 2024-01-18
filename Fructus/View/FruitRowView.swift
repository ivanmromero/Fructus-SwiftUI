//
//  FruitRowView.swift
//  Fructus
//
//  Created by Ivan Romero on 17/01/2024.
//

import SwiftUI

struct FruitRowView: View {
    //MARK: - PROPERTIES
    var fruit: Fruit
    //MARK: - FUNCTIONS
    //MARK: - BODY
    var body: some View {
        HStack(content: {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: .black.opacity(0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(
                        colors: fruit.gradientColors,
                        startPoint: .top,
                        endPoint: .bottom)
                )
                .clipShape(.rect(cornerRadius: 8))
            
            
            VStack(alignment: .leading, spacing: 5, content: {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            })
            .edgesIgnoringSafeArea(.bottom)
        })
    }
}

//MARK: - PREVIEW
#Preview (traits: .sizeThatFitsLayout) {
    FruitRowView(fruit: fruitsData[0])
        .padding()
}
