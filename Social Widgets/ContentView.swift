//
//  ContentView.swift
//  Social Widgets
//
//  Created by Alex Blong on 7/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            GradientBackgroundView() // Set the gradient as the background

            VStack {
                Text("Social Widgets")
                    .font(Font.custom("Inter", size: 40).weight(.black).italic())
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .frame(width: 500, height: 300, alignment: .top)
                
                Image(systemName: "square")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
                Text("Goodbye, World!")
            }
            .padding()
        }
        .edgesIgnoringSafeArea(.all) // Make the gradient extend to the screen edges
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// GradientBackgroundView remains as you've defined it

struct GradientBackgroundView: View {
    var body: some View {
        LinearGradient(
            stops: [
                .init(color: Color(red: 0.08, green: 0.15, blue: 0.78).opacity(0.9), location: 0.03),
                .init(color: Color(red: 0.06, green: 0.14, blue: 0.81).opacity(0.9), location: 0.31),
                .init(color: Color.white.opacity(0), location: 1.35)
            ],
            startPoint: .top,
            endPoint: .bottom
        )
        .edgesIgnoringSafeArea(.all) // This line makes the gradient extend to the screen edges
    }
}

struct BackgroundGradient: View {
    var body: some View {
        // Use the GradientBackgroundView as a background
        ZStack {
            GradientBackgroundView()

            // Your other view content goes here
            Text("Your App Content Here")
                .foregroundColor(.white)
                .font(.title)
        }
    }
}

struct BackgroundGradient_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
