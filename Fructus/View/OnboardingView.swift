//
//  OnboardingView.swift
//  Fructus
//
//  Created by Vivaan Baid on 12/05/22.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView {
            ForEach(0..<5){ item in
                FruitCardView()
            }
        }//tab View ended
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
