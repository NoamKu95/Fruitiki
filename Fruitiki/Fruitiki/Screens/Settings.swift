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
                            HStack {
                                Text("Fuitiki".uppercased())
                                    .fontWeight(.bold)
                                
                                Spacer()
                                
                                Image(systemName: "info.circle")
                            }
                    ){
                        Text("Hi sexy")
                    }
                    
                    // section 2
                    
                }
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
