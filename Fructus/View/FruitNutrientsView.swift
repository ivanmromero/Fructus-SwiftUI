//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Ivan Romero on 18/01/2024.
//

import SwiftUI

struct FruitNutrientsView: View {
    //MARK: - PROPERTIES
    let fruit: Fruit
    let nutrients: [String] = ["Energy",
                               "Sugar",
                               "Fat",
                               "Protein",
                               "Vitamins",
                               "Minerals"]
    
    //MARK: - FUNCTIONS
    //MARK: - BODY
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { index in
                    Divider()
                        .padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[index])
                        }
                        .foregroundStyle(fruit.gradientColors[1])
                        .font(.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[index])
                            .multilineTextAlignment(.trailing)
                    }
                    
                }
            }
        }
    }
}

//MARK: - PREVIEW
#Preview(traits: .fixedLayout(width: 375, height: 480)) {
    FruitNutrientsView(fruit: fruitsData[0])
        .preferredColorScheme(.dark)
        .padding()
}
