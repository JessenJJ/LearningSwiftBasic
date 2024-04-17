//
//  ContainerStack.swift
//  LearningSwiftBasic
//
//  Created by User50 on 05/04/24.
//

import SwiftUI

struct ContainerStack: View {
    var body: some View {
        ZStack{ //Zero-sized Stack
            LinearGradient(
                colors: [.yellow, .green, .blue],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            ).ignoresSafeArea()
            
            VStack { // Vertical Stack
                Text("Hello iOs Developer!!")
                    .font(.system(.largeTitle,design: .rounded))
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: "applelogo")
                    .font(.system(size: 100))
                Spacer()
                HStack {
                    Image(systemName: "lock.open.applewatch")
                    Text("Unlock your creativity")
                }
                .font(.title)
                .fontWeight(.light)
                .padding(.bottom,24)
            }
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    ContainerStack()
}
