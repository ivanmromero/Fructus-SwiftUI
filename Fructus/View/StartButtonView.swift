//
//  StartButtonView.swift
//  Fructus
//
//  Created by Ivan Romero on 16/01/2024.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    //MARK: - FUNCTIONS
    //MARK: - BODY
    var body: some View {
        Button {
            isOnboarding = false
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(.white, lineWidth: 1.25)
            )
        }
        .tint(.white)
    }
}

//MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout){
    StartButtonView()
}
