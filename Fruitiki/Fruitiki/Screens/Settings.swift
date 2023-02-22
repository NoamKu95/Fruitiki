//
//  Settings.swift
//  Fruitiki
//
//  Created by Noam Kurtzer on 22/02/2023.
//

import SwiftUI

struct Settings: View {
    
    @Environment(\.presentationMode) var presentationMode
    
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
                    
                    // section 2
                    GroupBox(
                        label:
                            SettingsGroupTitleView(titleText: "customization", titleIconName: "paintbrush")
                    ){
                        Divider().padding(.vertical, 4)
                        HStack (alignment: .center, spacing: 10) {
                            
                        }
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
