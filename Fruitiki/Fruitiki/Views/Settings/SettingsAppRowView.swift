//
//  SettingsAppRowView.swift
//  Fruitiki
//
//  Created by Noam Kurtzer on 23/02/2023.
//

import SwiftUI

struct SettingsAppRowView: View {
    
    var title: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            
            HStack (alignment: .center, spacing: 10) {
                
                Text(title)
                    .foregroundColor(.gray)
                
                Spacer()
                
                if content != nil {
                    Text(content!)
                } else if linkLabel != nil && linkDestination != nil {
                    Link(linkLabel!, destination: URL(string: "http://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsAppRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsAppRowView(title: "Developer", content: "Noam Kurtzer")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
