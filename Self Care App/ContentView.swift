//
//  ContentView.swift
//  Self Care App

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("garden")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                Text("My Garden")
                    .font(.custom("Pixelated Elegance", size: 42))
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    .shadow(color: .black.opacity(1), radius: 0.5, x: 1, y: 1)
                    .offset(x: 3, y: -280)
                Text("My Garden")
                    .font(.custom("Pixelated Elegance", size: 42))
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    .shadow(color: .black.opacity(1), radius: 0.5, x: 1, y: 1)
                    .offset(x: -3, y: -280)
                Text("My Garden")
                    .font(.custom("Pixelated Elegance", size: 42))
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    .shadow(color: .black.opacity(1), radius: 0.5, x: 1, y: 1)
                    .offset(x: 1, y: -283)
                Text("My Garden")
                    .font(.custom("Pixelated Elegance", size: 42))
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    .shadow(color: .black.opacity(1), radius: 0.5, x: 1, y: 1)
                    .offset(x: 1, y: -277)
                Text("My Garden")
                    .font(.custom("Pixelated Elegance", size: 42))
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.278, saturation: 0.709, brightness: 0.718)/*@END_MENU_TOKEN@*/)
                    .shadow(color: .black.opacity(1), radius: 0.5, x: 1, y: 1)
                    .offset(y: -280)
            }
        }
    }
}

#Preview {
    ContentView()
}
