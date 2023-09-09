//
//  ContentView.swift
//  School Houses
//
//  Created by Haneen Al hammoudi on 20/08/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.orange.opacity(0.1) // Set a transparent background

//            LinearGradient(colors: [.white, .yellow.opacity(0.5), .white],
//                           startPoint: .topLeading, endPoint: .bottomTrailing)
            
                .edgesIgnoringSafeArea(.all) // Extend the gradient to cover the safe area

            VStack {
                // Picture of Logo
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 800, height: 300)
                    .padding( )
                    .offset(x:0, y:-85)
                
                
                
                // sign up button
                Text("         Sign Up         ")
                    .bold()
                    .font(.title)
                    .padding(10)
                    .foregroundColor(.white)
                    .background(Color.yellow)
                    .cornerRadius(100)
                    .shadow(color: .gray.opacity(0.3), radius: 10, x: 0, y: 10)
                    .padding()
                    .offset(x:0,y:-50)

                // login button
                Text("             log in           ")
                    .bold()
                    .font(.title)
                    .padding(10)
                    .foregroundColor(.yellow)
                    .background(Color.white)
                    .cornerRadius(100)
                    .shadow(color: .gray, radius: 10, x: 0, y: 10)
                    .offset(x:0,y:-22)

            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
