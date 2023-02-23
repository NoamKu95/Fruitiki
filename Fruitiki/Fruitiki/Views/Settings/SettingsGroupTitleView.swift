//
//  SettingsGroupTitleView.swift
//  Fruitiki
//
//  Created by Noam Kurtzer on 22/02/2023.
//

import SwiftUI

struct SettingsGroupTitleView: View {
    
    var titleText: String
    var titleIconName: String?
    
    var body: some View {
        HStack {
            Text(titleText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: titleIconName ?? "")
        }
    }
}

struct SettingsGroupTitleView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsGroupTitleView(titleText: "Fruitiki", titleIconName: "info.circle")
            .previewLayout(.sizeThatFits)
    }
}
