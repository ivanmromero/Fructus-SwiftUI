//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Ivan Romero on 18/01/2024.
//

import SwiftUI

struct SourceLinkView: View {
    //MARK: - PROPERTIES
    //MARK: - FUNCTIONS
    //MARK: - BODY
    var body: some View {
        GroupBox {
            HStack(content: {
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            })
            .font(.footnote)
        }
    }
}

//MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    SourceLinkView()
        .padding()
}
