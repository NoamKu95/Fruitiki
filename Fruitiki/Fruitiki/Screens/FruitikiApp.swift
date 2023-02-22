//
//  FruitikiApp.swift
//  Fruitiki
//
//  Created by Noam Kurtzer on 22/02/2023.
//

import SwiftUI

@main
struct FruitikiApp: App {
    
    @AppStorage("seen_onboarding") var useSeenOnboarding: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if useSeenOnboarding {
                ContentView()
            } else {
                Onboarding()
            }
        }
    }
}
