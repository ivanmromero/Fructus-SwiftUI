//
//  ContentView.swift
//  Fructus
//
//  Created by Ivan Romero on 16/01/2024.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    //MARK: - FUNCTIONS
    //MARK: - BODY
    var body: some View {
        NavigationStack {
            List(fruits.shuffled()) { fruit in
                NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 4)
                }
            }
            .listStyle(.inset)
            .navigationTitle("Fruits")
        }
    }
}

//MARK: - PREVIEW
#Preview {
    ContentView(fruits: fruitsData)
}
