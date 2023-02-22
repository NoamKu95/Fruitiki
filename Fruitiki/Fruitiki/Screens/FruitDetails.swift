//
//  FruitDetails.swift
//  Fruitiki
//
//  Created by Noam Kurtzer on 22/02/2023.
//

import SwiftUI

struct FruitDetails: View {
    
    var displayedFruit: Fruit
    
    func getColorForMainTitle() -> Color {
        return generateGradientColors(using: displayedFruit.fruitName)[0]
    }
    
    func getSubHeadlineText() -> String {
        return "Learn more about \(displayedFruit.fruitName)".uppercased()
    }
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack (alignment: .center, spacing: 20) {
                    
                    FruitHeaderView(fruit: displayedFruit)
                    
                    VStack (alignment: .leading, spacing: 20) {
                        Text(displayedFruit.fruitName)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(getColorForMainTitle())
                        
                        Text(displayedFruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // nutrients
                        
                        Text(getSubHeadlineText())
                            .fontWeight(.bold)
                            .foregroundColor(getColorForMainTitle())
                        
                        Text(displayedFruit.description)
                            .multilineTextAlignment(.leading)
                        
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 25)
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
                .navigationBarTitle(displayedFruit.fruitName, displayMode: .inline)
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct FruitDetails_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetails(displayedFruit: fruitsData[5])
    }
}
