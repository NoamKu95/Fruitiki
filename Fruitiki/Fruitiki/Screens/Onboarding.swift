//
//  Onboarding.swift
//  Fruitiki
//
//  Created by Noam Kurtzer on 22/02/2023.
//

import SwiftUI

struct Onboarding: View {
    
    var body: some View {
        TabView {
            
            ForEach(fruitsData[0...4]) { item in
                OnboardingCardView(displayedFruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
