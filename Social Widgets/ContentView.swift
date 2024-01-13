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
                    .frame(width: 500, height: 680, alignment: .top)

                // Profile Icon image
                Image("Profile Icon")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 53, height: 53)
                    .clipped()
                    .offset(x: -160, y: -650) // Adjust x and y to move the image
                
                Image(systemName: "gearshape")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 53, height: 53)
                    .clipped()
                    .offset(x: 160, y: 30) // Adjust x and y to move the image
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

// ... [Rest of your code for GradientBackgroundView and BackgroundGradient] ...

// Gradient (background)
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

