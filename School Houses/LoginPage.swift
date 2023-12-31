//
//  LoginPage.swift
//  School Houses
//
//  Created by Haneen Al hammoudi on 09/09/2023.
//

import SwiftUI

struct LoginPage: View {
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
        ZStack{
            Color.orange.opacity(0.1)
                .edgesIgnoringSafeArea(.all)
            VStack{
                
                Text("Log in")
                    . font(.title)
                    .padding(.vertical)
                    .bold()
                    .foregroundColor(Color.gray)
                    .offset(x:0, y:-90)
                    .underline(true,color:.yellow)
                    .frame(height: 10)
                
                
                VStack {
                    
                    TextField("Email", text: $email)
                        .padding()
                        .background(.white)
                        .cornerRadius(20)
                        .padding(.horizontal)
                        .offset(x:0, y: 80)
                    
                    
                    SecureField("Password",text: $password)
                        .padding()
                        .background(.white)
                        .cornerRadius(20)
                        .padding(.horizontal)
                        .offset(x:0, y: 160)
                    Button{
                        
                    } label:{
                        Text("forgot your password ?")
                        .offset(x:0, y: 200)
                    }
                    
                    
                }
                
                .padding(.bottom, 250)
                .background(.orange.opacity(0.4))
                .cornerRadius(50)
                .foregroundColor(.red)
                .border(.yellow,width:8)
                .cornerRadius(50)
                .offset(x:0, y: -20)
                .frame(width: 300)
                
                
                
                
            }
            Text("        Continue        ")
                .bold()
                .font(.title2)
                .padding(10)
                .foregroundColor(.black)
                .background(Color.yellow)
                .cornerRadius(20)
                .shadow(color: .gray.opacity(0.3), radius: 10, x: 0, y: 10)
                .padding()
                .offset(x:0,y:260)
            Button{
                
            } label:{
                Text("already have an account ?")
                .offset(x:0, y: 350)
                .foregroundColor(.gray)
                Text("Sign up")
                .offset(x:0, y: 350)
                .foregroundColor(.yellow)
            }
            
            
        }
    }
    
    }


struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}


