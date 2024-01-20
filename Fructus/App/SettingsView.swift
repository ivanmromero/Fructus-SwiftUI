//
//  SettingsView.swift
//  Fructus
//
//  Created by Ivan Romero on 18/01/2024.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
    @Environment(\.dismiss) private var dismiss
    @AppStorage("isOnboarding") var isOnboarding: Bool = false

    //MARK: - FUNCTIONS
    //MARK: - BODY
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                VStack(spacing: 20, content: {
                    // MARK: - SECTION 1
                    GroupBox {
                        Divider()
                            .padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .clipShape(.rect(cornerRadius: 9))
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more")
                                .font(.footnote)
                        }
                    } label: {
                        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    }
                    // MARK: - SECTION 2
                    GroupBox {
                        Divider()
                            .padding(.vertical, 4)
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $isOnboarding, label: {
                            Text("RESTART")
                        })
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    } label: {
                        SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    }
                    
                    // MARK: - SECTION 3
                    GroupBox {
                        SettingsRowView(name: "Developer", content: "Ivan Manuel Romero")
                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                        SettingsRowView(name: "LinkedIn", linkLabel: "Ivan Manuel Romero", linkDestination: "linkedin.com/in/ivan-manuel-romero")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.0.0")
                    } label: {
                        SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    }
                })
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .toolbar(content: {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(action: {
                            dismiss()
                        }, label: {
                            Image(systemName: "xmark")
                        })
                    }
                })
                .padding()
            }
            .scrollIndicators(.hidden)
        }
    }
}

//MARK: - PREVIEW
#Preview {
    SettingsView()
        .preferredColorScheme(.dark)
}
