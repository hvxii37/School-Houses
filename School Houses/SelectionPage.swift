//
//  SelectionPage.swift
//  School Houses
//
//  Created by Haneen Al hammoudi on 04/11/2023.
//

import SwiftUI

struct SelectionPage: View {
    var body: some View {
        ZStack{
            Color.orange.opacity(0.1)
                .edgesIgnoringSafeArea(.all)
            
            Circle()
         .frame(width: 200, height: 200)
         .foregroundColor(Color.orange.opacity(1))
         .offset(x: 150, y: -390)
            
            Circle()
         .frame(width: 250, height: 250)
         .foregroundColor(Color.orange.opacity(0.4))
         .offset(x: 50, y: -390)
            Circle()
         .frame(width: 300, height: 300)
         .foregroundColor(Color.orange.opacity(0.6))
         .offset(x: 150, y: -310)
            
            Circle()
         .frame(width: 200, height: 200)
         .foregroundColor(Color.orange.opacity(1))
         .offset(x: -150, y: 390)
            
            Circle()
         .frame(width: 250, height: 250)
         .foregroundColor(Color.orange.opacity(0.4))
         .offset(x: -50, y: 390)
            Circle()
         .frame(width: 300, height: 300)
         .foregroundColor(Color.orange.opacity(0.6))
         .offset(x: -150, y: 310)
        
            
         
            
            Text("Select your House")
            .bold()
                            .font(.largeTitle)
                            .offset(y: -220)

                        Text("Team")
                            .bold()
                            .font(.largeTitle)
                            .offset(y: -180)
        VStack{
        
            HStack{
                Button {
                    // add your action here
                } label: {
                    Text("Stallions")
                        .bold()
                        .font(.body)
                        .frame(width: 100)
                        .padding(20)
                        .foregroundColor(.black)
                        .background(.red)
                        .shadow(radius: 10)
                        .cornerRadius(20)
                        .shadow(color: .gray.opacity(0.3), radius: 10, x: 0, y: 10)
                    
                    
                }
                .shadow(radius: 10)
                .background(
                    BubbleButton(x1: -30, y1: -20, x2: 50, y2: 20,
                                 color1: [.red], color2: [.red])
                )
                
                Button {
                    // add your action here
                } label: {
                    Text("Scorpions")
                        .bold()
                        .frame(width: 100)
                        .padding(20)
                        .foregroundColor(.black)
                        .background(.yellow)
                        .cornerRadius(20)
                        .shadow(color: .gray.opacity(0.3), radius: 10, x: 0, y: 10)
                }
                .shadow(radius: 10)
                .background(
                    BubbleButton(x1: -50, y1: -20, x2: 50, y2: 20,
                                 color1: [.yellow], color2: [.yellow])
                )
            }
            // vertical space between the buttons
            .padding(.vertical, 60)
            
            // second button row
            HStack{
                Button {
                    // add your action here
                } label: {
                    Text("Camels")
                        .bold()
                        .frame(width: 100)
                        .padding(20)
                        .foregroundColor(.black)
                        .background(.green)
                        .shadow(radius: 10)
                        .cornerRadius(20)
                        .shadow(color: .gray.opacity(0.3), radius: 10, x: 0, y: 10)
                }
                .shadow(radius: 10)
                .background(
                    BubbleButton(x1: -50, y1: -20, x2: 20, y2: 20,
                                 color1: [.green], color2: [.green])
                )
                
                Button {
                    // add your action here
                } label: {
                    Text("Falcons")
                        .bold()
                        .frame(width: 100)
                        .padding(20)
                        .foregroundColor(.black)
                        .background(.blue)
                        .cornerRadius(20)
                        .shadow(color: .gray.opacity(0.3), radius: 10, x: 0, y: 10)
                }
                .shadow(radius: 10)
                .background(
                    BubbleButton(x1: -40, y1: 30, x2: 40, y2: -20,
                                 color1: [.blue], color2: [.blue])
                )
            }
            
        }
    }
    }
}

struct SelectionPage_Previews: PreviewProvider {
    static var previews: some View {
        SelectionPage()
    }
}
struct BubbleButton: View {
    let x1: Double
    let y1: Double
    let x2: Double
    let y2: Double
    let color1: [Color]
    let color2: [Color]
    var body: some View {
        Circle()
            .fill(
                LinearGradient(colors: color1, startPoint: .topLeading , endPoint: .bottomLeading)
            )
            .opacity(0.5)
            .offset(x: x1, y: y1)
        
            .background(
                Circle()
                    .fill(
                        LinearGradient(colors: color2, startPoint: .topLeading , endPoint: .bottomLeading)
                    )
                    .opacity(0.6)
                    .offset(x: x2, y: y2)
            )
    }
}
