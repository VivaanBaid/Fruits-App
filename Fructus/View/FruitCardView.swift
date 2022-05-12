//
//  FruitCardView.swift
//  Fructus
//
//  Created by Vivaan Baid on 12/05/22.
//

import SwiftUI

struct FruitCardView: View {
    
    //MARK:- <Properties>
    
    @State private var isAnimating = false
    
    
    //MARK:- <Body>
    
    
    var body: some View {
        ZStack {
            VStack(spacing: 20){
                //FRUIT IMAGE
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0.0, green: 0.0, blue: 0.0,opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0:0.6)
                 
                //Fruit Title
                Text("Blueberry")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.15), radius: 2, x: 2, y: 2)
                
                //Fruit
                Text("Blueberries are sweet nutritious ,and a wildly popular fruit all over the world!")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                //Custom start button
                StartButtonView()
                
                
            }
        }
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.15)){
                isAnimating = true
            }
        })
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(colors: [Color("ColorBlueBerryLight"), Color("ColorBlueBerryDark")], startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
    }
}
