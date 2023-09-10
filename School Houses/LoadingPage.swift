//
//  LoadingPage.swift
//  School Houses
//
//  Created by Haneen Al hammoudi on 10/09/2023.
//

import SwiftUI

struct LoadingPage: View {
    var body: some View {
        
        ZStack{
            Color.orange.opacity(0.1)
            .edgesIgnoringSafeArea(.all)
            
            VStack{
                Image("Loading")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 800, height: 300)
                    .padding( )
                    .offset(x:0, y:-80)
                
                Text("Loading....")
                .foregroundColor(.gray)
                .bold()
                .font(.title)
                .padding(10)
                .cornerRadius(100)
                .shadow(color: .gray.opacity(0.3), radius: 10, x: 0, y: 10)
                .padding()
                .offset(x:0,y:-60)
                
            }
        }
        
   
        
    }
}

struct LoadingPage_Previews: PreviewProvider {
    static var previews: some View {
        LoadingPage()
    }
}
