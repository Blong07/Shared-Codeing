import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                HStack {
                    Image(systemName: "person.crop.circle")
                        .font(.system(size: 50))
                    VStack(alignment: .leading) {
                        Text("Aydan H")
                            .font(.headline)
                        Text("Twitter")
                            .font(.subheadline)
                    }
                }
                HStack {
                    Image(systemName: "person.crop.circle")
                        .font(.system(size: 50))
                    VStack(alignment: .leading) {
                        Text("@Aydanh")
                            .font(.headline)
                        Text("Instagram")
                            .font(.subheadline)
                    }
                }
                HStack {
                    Image("Profile Icon")
                        .font(.system(size: 50))
                    VStack(alignment: .leading) {
                        Text("@Bydanh")
                            .font(.headline)
                        Text("WhatsApp")
                            .font(.subheadline)
                    }
                }
            }
            VStack {
                        // Use Spacer to push content to the center or specific position
                        //Spacer()
                        HStack {
                            Spacer()
                            // Your Rectangle view
                            Rectangle()//RED
                                .foregroundColor(.clear)
                                .frame(width: 46, height: 46)
                                .background(Color(red: 0.95, green: 0.36, blue: 0.11))
                                .cornerRadius(15)
                           //Spacer()
                        } .padding(10)
                       // Spacer()
                    }
            VStack {
                //Spacer()
                HStack {
                    Spacer()
                    Rectangle()//Blue
                    //Spacer()
                        .foregroundColor(.clear)
                        .frame(width: 46, height: 46)
                        .background(Color(red: 0.11, green: 0.63, blue: 0.95))
                        .cornerRadius(15)
                    Spacer()
                } .padding(10)
            }
            .navigationTitle("Social Widgets")
            .navigationBarItems(trailing: Button(action: {
                
            }) {
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

