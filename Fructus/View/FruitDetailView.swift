//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Ivan Romero on 18/01/2024.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: - PROPERTIES
    let fruit: Fruit
    
    //MARK: - FUNCTIONS
    //MARK: - BODY
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20, content: {
                    // HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        // TITLE
                        Text(fruit.title)
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundStyle(fruit.gradientColors[1])
                        // HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        // NUTRIENTS
                        
                        // SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundStyle(fruit.gradientColors[1])
                        // DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        // LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                })
            }
            .scrollIndicators(.hidden)
            .ignoresSafeArea(edges: .top)
        }
    }
}

//MARK: - PREVIEW
#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
