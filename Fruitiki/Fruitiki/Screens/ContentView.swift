//
//  ContentView.swift
//  Fruitiki
//
//  Created by Noam Kurtzer on 22/02/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var fruitsList: [Fruit] = fruitsData
    
    func refreshListOrder() {
        fruitsList = fruitsList.shuffled()
    }

    var body: some View {
        NavigationView {
            List {
                ForEach(fruitsList.shuffled()) { item in
                    NavigationLink(destination: FruitDetails(displayedFruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                    
                }
            }
            .refreshable {
                refreshListOrder()
            }
            .navigationTitle("Fruits")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
