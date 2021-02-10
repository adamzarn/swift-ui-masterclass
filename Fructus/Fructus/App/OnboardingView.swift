//
//  OnboardingView.swift
//  Fructus
//
//  Created by Adam Zarn on 2/9/21.
//

import SwiftUI

struct OnboardingView: View {
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        TabView {
            ForEach(fruits[0...fruits.count-1]) { item in
                FruitCardView(fruit: item)
            }
        } // Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
