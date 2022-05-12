//
//  StartButtonView.swift
//  Fructus
//
//  Created by Vivaan Baid on 12/05/22.
//

import SwiftUI

struct StartButtonView: View {
    
    var body: some View {
        Button {
            //action
        } label: {
            HStack(spacing: 8) {
                Text("Hello")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                
            }
            
        } // Button
        //Have more Horizontal padding then vertical is better generally
        .accentColor(.white)
        .padding(.horizontal,16)
        .padding(.vertical,10)
        .background(
            Capsule()
                .strokeBorder(Color.white,lineWidth: 1.25)
        )
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
