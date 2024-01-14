import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                VStack {
                    
                    Spacer()
                    HStack {
                    
                        Image("Group 13") // Left
                            .resizable() // Make the image resizable
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .background(Color(red: 0.50, green: 0.50, blue: 0.50))
                            .cornerRadius(15)

                        Spacer() // Between left and right
                            
                        Image(systemName: "plus.square") // Center
                            .resizable() // Make the image resizable
                            .scaledToFit()
                            .frame(width: 46, height: 46)
                           //  .cornerRadius(15)
                                
                        Spacer() // Center and right
                                
                        Image(systemName: "gear") // Right
                            .resizable() // Make the image resizable
                            .scaledToFit() // Scale the image to fit its frame
                            .frame(width: 50, height: 50)
                            .cornerRadius(15)

                        
                    }
                    .padding(0) // Add padding around the HStack
                    .padding(.top, 650) // Add additional padding to the top

                    
                }
                .navigationTitle("Social Widgets")
                Button(action: {
                    // Define the action here, like print("Button tapped")
                }) {
                    Text("Click Me") // Content of the button
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
