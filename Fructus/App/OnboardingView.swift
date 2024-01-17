//
//  OnboardingView.swift
//  Fructus
//
//  Created by Ivan Romero on 16/01/2024.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    //MARK: - FUNCTIONS
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruits) { fruitModel in
                FruitCardView(fruitModel: fruitModel)
            }
        }
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

//MARK: - PREVIEW
#Preview {
    OnboardingView()
}
