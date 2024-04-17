//
//  SwiftUIColorControl.swift
//  LearningSwiftBasic
//
//  Created by User50 on 05/04/24.
//

import SwiftUI

struct SwiftUIColorControl: View {
    @State private var showAlert:Bool = false
    
    var body: some View {
        VStack {
            Button {
                showAlert = true
            }label: {
                Image(systemName: "trash")
                    .font(.title)
            }
            .padding()
            .foregroundStyle(.white)
            .background(.red)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .alert("Are you sure you want to delete this item?", isPresented: $showAlert) {
                Button{
                
                }label: {
                    Text("Delete")
                }
            }
        }
    }
}

#Preview {
    SwiftUIColorControl()
}
