//
//  OnboardingCardView.swift
//  Fruitiki
//
//  Created by Noam Kurtzer on 22/02/2023.
//

import SwiftUI

struct OnboardingCardView: View {
    
    @State private var isAnimating: Bool = false
    var displayedFruit: Fruit
//    @State var fruitName: String
//    @State var imageName: String
//    @State var fruitDescription: String
    
    func generateGradientColors() -> [Color] {
        let firstColor = "Color" + displayedFruit.fruitName + "Light"
        let secondColor = "Color" + displayedFruit.fruitName + "Dark"
        return [Color(firstColor), Color(secondColor)]
    }
    
    var body: some View {
        ZStack {
            VStack (spacing: 20) {
                
                Image(displayedFruit.imageName)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                Text(displayedFruit.fruitName)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.15),radius: 2, x: 2, y: 2)
                
                Text(displayedFruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                StartButton()
            }
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: generateGradientColors()), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

struct OnboardingCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingCardView(displayedFruit: fruitsData[0])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
