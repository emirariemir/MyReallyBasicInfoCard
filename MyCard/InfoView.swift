//
//  InfoView.swift
//  MyCard
//
//  Created by Emir on 20.09.2020.
//

import SwiftUI

struct InfoView: View {
    
    var infoText: String
    var symbolName: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 50)
                .frame(width: 350, height: 75)
                .foregroundColor(.white)
            HStack {
                Image(systemName: symbolName)
                    .foregroundColor(.green)
                
                Text(infoText)
                    .font(.title2)
                    .fontWeight(.bold)
            }
        }.padding(5)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(infoText: "Hello", symbolName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
