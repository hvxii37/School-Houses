//
//  SignupPage.swift
//  School Houses
//
//  Created by Haneen Al hammoudi on 09/09/2023.
//

import SwiftUI

struct SignupPage: View {
    @State var name : String = ""
    @State var email: String = ""
    @State var password : String = ""
    @State var confirmPassword : String = ""
    var body: some View {
        ZStack{
            Color.orange.opacity(0.1)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Create your account")
                    .font(.title2)
                    .padding(.vertical)
                    .bold()
                    .foregroundColor(Color.gray)
                    .offset(x:0,y:-60)
                    .underline(true,color:.yellow)
                    .frame(height:20)
                
                
                
                VStack{
                    TextField("Name", text: $name)
                        .padding()
                        .background(.white)
                        .cornerRadius(20)
                        .padding(.horizontal)
                        .offset(x:0, y:60)
                    
                    TextField("Email",text: $email)
                        .padding()
                        .background(.white)
                        .cornerRadius(20)
                        .padding(.horizontal)
                        .offset(x:0, y:100)
                    SecureField("Password",text: $password)
                        .padding()
                        .background(.white)
                        .cornerRadius(20)
                        .padding(.horizontal)
                        .offset(x:0, y:140)
                    SecureField("Confirm Password",text: $confirmPassword)
                        .padding()
                        .background(.white)
                        .cornerRadius(20)
                        .padding(.horizontal)
                        .offset(x:0, y:180)
                    
                    
                }
                .padding(.bottom,250)
                .background(.orange.opacity(0.4))
                .cornerRadius(50)
                .border(.yellow,width:8)
                .cornerRadius(50)
                .offset(x:0,y:-20)
                .frame(width: 300)
                
                
            }
            Text("     Continue    ")
                .bold()
                .font(.title)
                .padding(10)
                .foregroundColor(.black)
                .background(.yellow)
                .cornerRadius(20)
                .shadow(color: .gray.opacity(0.3), radius:10, x:0, y:10)
                .padding()
                .offset(x:0,y:300)
            Button{
                
            }label:{
                Text("already a memeber ?")
                    .offset(x:0, y:350)
                    .foregroundColor(.gray)
                Text("Log in")
                    .offset(x:0,y:350)
                    .foregroundColor(.yellow)
                
            }
        }
    }
    
    struct SignupPage_Previews: PreviewProvider {
        static var previews: some View {
            SignupPage()
        }
    }
}
