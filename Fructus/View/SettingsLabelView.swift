//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Ivan Romero on 19/01/2024.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: - PROPERTIES
    let labelText: String
    let labelImage: String
    
    //MARK: - FUNCTIONS
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased())
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

//MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
        .padding()
}
