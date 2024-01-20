//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Ivan Romero on 19/01/2024.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: - PROPERTIES
    let name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    //MARK: - FUNCTIONS
    //MARK: - BODY
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical, 4)
            
            HStack {
                Text(name).foregroundStyle(.gray)
                Spacer()
                
                switch (content, linkLabel, linkDestination) {
                case (.some(let content), .none, .none):
                    Text(content)
                case (.none, .some(let linkLabel), .some(let linkDestination)):
                    Link(linkLabel,
                         destination: URL(string: "https://\(linkDestination)")!)
                    Image(systemName: "arrow.up.right.square").foregroundStyle(.pink)
                default:
                    EmptyView()
                }
            }
        }
    }
}

//MARK: - PREVIEW
#Preview(traits: .fixedLayout(width: 375, height: 70)) {
    SettingsRowView(name: "Developer", content:"Ivan Manuel Romero")
        .padding()
}

#Preview(traits: .fixedLayout(width: 375, height: 70)) {
    SettingsRowView(name: "Developer", linkLabel: "Ivan Manuel Romero", linkDestination: "apple.com")
        .padding()
}

#Preview(traits: .fixedLayout(width: 375, height: 70)) {
    SettingsRowView(name: "Developer", linkLabel: "Ivan Manuel Romero")
        .padding()
}
