//
//  SwiftUILink.swift
//  LearningSwiftBasic
//
//  Created by User50 on 05/04/24.
//

import SwiftUI

struct SwiftUILink: View {
    @State private var showWebView = false
    
    var body: some View {
        VStack {
            // Cara pertama
            let Url = URL(string:"https://hidayatabisena.com")
            
            Link("Personal website",destination: Url!)
            
            // Cara kedua
            Link(destination: Url!)  {
                HStack{
                    Image(systemName: "applelogo")
                    Text("Sign in with Apple")
                }
                .frame(width: 300,height: 70)
                .foregroundStyle(.white)
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            
            // Cara ketiga
            Button {
                showWebView = true
            }label: {
                Text("Show personal website")
            }
            .fullScreenCover(isPresented: $showWebView, content: {
                WebView(url: Url!)
            })
        }
    }
}

#Preview {
    SwiftUILink()
}
