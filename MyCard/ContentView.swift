//
//  ContentView.swift
//  MyCard
//
//  Created by Emir on 20.09.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1.0)
                .ignoresSafeArea()
            
            VStack {
                Image("bojack-chills")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                
                Text("Emir Arı")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text("iOS App Developer")
                    .foregroundColor(.white)
                    .font(.title2)
                
                InfoView(infoText: "+1 123 456 789", symbolName: "phone.fill")
                
                InfoView(infoText: "emirari@outlook.com", symbolName: "envelope.fill")
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
