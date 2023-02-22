//
//  FruitHeaderView.swift
//  Fruitiki
//
//  Created by Noam Kurtzer on 22/02/2023.
//

import SwiftUI

struct FruitHeaderView: View {
    
    var fruit: Fruit
    @State private var isAnaimating: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: generateGradientColors(using: fruit.fruitName)), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.imageName)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.15) ,radius: 8, x: 6, y: 8)
                .scaleEffect(isAnaimating ? 1.0 : 0.6)
        }
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnaimating = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[4])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
