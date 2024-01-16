//
//  OnboardingView.swift
//  Fructus
//
//  Created by Ivan Romero on 16/01/2024.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - PROPERTIES
    //MARK: - FUNCTIONS
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(0..<5) { _ in
                FruitCardView()
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
