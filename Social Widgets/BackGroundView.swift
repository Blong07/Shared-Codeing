import SwiftUI

struct ContentView: View {
    
    @State private var animatedGradient = false
    
    var body: some View {
        VStack{
            Image(systemName: "swfit")
                .font(.system(size: 72, weight: .light))
                .padding(.top, 80)
                .padding(.bottom, 54)
            
            Text("gradient background animation in SwiftUI")
                .font(.title)
            bold()
            
            Text("It is a visual effect where big boom lives")
                .fontWeight(.thin)
            
            Button {
                
            } label: {
                Image(systemName: "arrow.right")
            }.framewidth:
            
            }
        
        
        
            LinearGradient(colors: [.purple, .blue], startPoint: .topLeading , endPoint: .bottomTrailing)
                .hueRotation(.degrees(animatedGradient ? 18 : 0)) // allows colour to change between colours under "LinearGradient
            
                .onAppear { withAnimation(.linear(duration: 5.0).repeatForever(autoreverses: true))
                    {
                        animatedGradient.toggle()
                    }
                    
                    
                }
            
    
    }

            
            
            
            
            
            struct ContentView_Previews: PreviewProvider {
                static var previews: some View {
                    ContentView()
                }
            }
        }

