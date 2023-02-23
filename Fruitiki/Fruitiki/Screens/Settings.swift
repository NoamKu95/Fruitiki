//
//  Settings.swift
//  Fruitiki
//
//  Created by Noam Kurtzer on 22/02/2023.
//

import SwiftUI

struct Settings: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("seen_onboarding") var userSeenOnboarding: Bool = true
    
    var body: some View {
        NavigationView {
            ScrollView (.vertical, showsIndicators: false) {
                VStack (spacing: 20) {
                    
                    // section 1
                    GroupBox(
                        label:
                            SettingsGroupTitleView(titleText: "Fruitiki", titleIconName: "info.circle")
                    ){
                        Divider().padding(.vertical, 4)
                        HStack (alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Spacer()
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassioum, dietary, fiber, vitamins and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    GroupBox(
                        label:
                            SettingsGroupTitleView(titleText: "Customization", titleIconName: "brush")
                    ){
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by switching the toggle. This will start the onboarding process once again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1) // make sure text will not be cut, give it all space it needs
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: Binding<Bool>(
                            get: { !userSeenOnboarding },
                            set: { userSeenOnboarding = !$0 }
                        )) {
                            Text("Restart".uppercased())
                        }
                        .padding()
                        .background(
                            Color(.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                         
                    }
                    
                    
                    GroupBox(
                        label:
                            SettingsGroupTitleView(titleText: "Application", titleIconName: "apps.iphone")
                    ){
                        SettingsAppRowView(title: "Developer", content: "Noam Kurtzer")
                        SettingsAppRowView(title: "Designer", content: "Robert Petras")
                        SettingsAppRowView(title: "Website", linkLabel: "My website", linkDestination: "noamkurtzer.co.il")
                        SettingsAppRowView(title: "Compatability", content: "iOS 14 +")
                        SettingsAppRowView(title: "SwiftUI version", content: "2.0")
                        SettingsAppRowView(title: "App version", content: "1.0.1")
                    }
                    
                }
                .padding(.horizontal, 16)
                .navigationBarTitle("Settings", displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                            
                        }) {
                            Image(systemName: "xmark")
                            
                        }
                )
            }
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
