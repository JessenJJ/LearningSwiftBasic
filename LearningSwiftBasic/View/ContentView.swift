//
//  ContentView.swift
//  LearningSwiftBasic
//
//  Created by User50 on 05/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Image(systemName:"cloud.hail.fill")
                .font(.system(size: 120))
                .symbolRenderingMode(.palette)
                .foregroundStyle(.purple,.blue)
                .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x:0, y: 10)
            
            Image(.astronaut)
                .resizable()
                .scaledToFit()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            Group {
                let url = URL(string: "https://t3.ftcdn.net/jpg/05/71/06/76/360_F_571067620_JS5T5TkDtu3gf8Wqm78KoJRF1vobPvo6.jpg")
                AsyncImage(url: url){
                    image in
                    image.resizable()
                        .scaledToFit()
                        .clipShape(Rectangle())
                } placeholder: {
                    ProgressView()
                    
                }.frame(width: 200,height: 200)
            }
            .overlay {
                ZStack(alignment: .bottom){
                    Rectangle()
                        .opacity(0.5)
                    HStack{
                        Image(systemName: "cloud.sun.rain")
                            .symbolRenderingMode(.palette)
                            .foregroundStyle(.white,.yellow,.blue)
                            .font(.largeTitle)
                    }
                }
            }
            
            Text("Hello world")
            
        }
    }
}

#Preview {
    ContentView()
}
