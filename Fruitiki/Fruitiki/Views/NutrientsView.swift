//
//  NutrientsView.swift
//  Fruitiki
//
//  Created by Noam Kurtzer on 22/02/2023.
//

import SwiftUI

struct NutrientsView: View {
    
    var titles: [String]
    var values: [String]
    var titlesColor: Color
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(Array(titles.enumerated()), id: \.offset) { index, item in
                    
                    Divider().padding(.vertical, 2)
                    
                    HStack (alignment: .firstTextBaseline) {
                        Group {
                            Image(systemName: "info.circle")
                            Text(item)
                        }
                        .foregroundColor(titlesColor)
                        .font(.system(.body).bold())
                        
                        Spacer(minLength: 35)
                        
                        Text(values[index])
                            .multilineTextAlignment(.trailing)
                    }
                        
                }
            }
        }
    }
}

struct NutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        NutrientsView(titles: nutritionsTitles, values: fruitsData[0].nutrition, titlesColor: .blue)
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
    }
}
