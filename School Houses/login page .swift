//
//  login page .swift
//  School Houses
//
//  Created by Haneen Al hammoudi on 09/09/2023.
//

import SwiftUI

struct login_page_: View {
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
        ZStack{
            Color.orange.opacity(0.1)
            .edgesIgnoringSafeArea(.all)
            VStack{
                
                Text("login Page")
                    .padding(.vertical)
                    .font(.title)
                    .offset(x:0, y:-100)
                    .underline()
                VStack {
                    
                    TextField("Email", text: $email)
                        .padding()
                        .background(.white)
                        .cornerRadius(20)
                        .padding(.horizontal)
                    
                    SecureField("Password",text: $password)
                        .padding()
                        .background(.white)
                        .cornerRadius(20)
                        .padding(.horizontal)
                    Button{
                        
                    } label:{
                        Text("forgot your password ?")
                    }
                    
                    
                }
                .padding()
                .padding(.bottom, 50)
                .background(.orange.opacity(0.3))
                .cornerRadius(40)
                .foregroundColor(.red)
            }
        }
     
        
            
        }
    }


struct login_page__Previews: PreviewProvider {
    static var previews: some View {
        login_page_()
    }
}
