//
//  ContentView.swift
//  School Houses
//
//  Created by Haneen Al hammoudi on 20/08/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
       
            VStack {
                
            // Picture of Logo
             Image("logo")
            .resizable()
            .scaledToFit()
            .frame(width:300, height:300 )
                
                
                    // sign up button
                    Text("        Sign Up         ")
                        .bold()
                        .font(.largeTitle)
                        . padding(4)
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(100)
                        .shadow(color: .gray,radius: 10, x:0, y: 10)
                        .padding()
                    
                    
                    // login button
                    Text("        Login in         ")
                        .bold()
                        .font(.largeTitle)
                        . padding(4)
                        .foregroundColor(.yellow)
                        .background(.white)
                        .cornerRadius(100)
                        .shadow(color: .gray,radius: 10, x:0, y: 10)
            
                }
                
            }
       
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
