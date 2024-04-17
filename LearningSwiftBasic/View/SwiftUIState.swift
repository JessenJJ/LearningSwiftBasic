//
//  SwiftUIState.swift
//  LearningSwiftBasic
//
//  Created by User50 on 05/04/24.
//

import SwiftUI

struct SwiftUIState: View {
    @State private var isPlaying: Bool = false
    
    @State private var counterPlayerOne = 1
    @State private var counterPlayerTwo = 1
    
    var body: some View {
        VStack {
            Button{
                isPlaying.toggle()
            }label: {
                Image(systemName: isPlaying ? "stop.circle.fill" : "play.circle.fill")
                    .font(.system(size: 150))
                    .foregroundStyle(isPlaying ?.green : .blue)
            }
            ListPlayer(counterPlayerOne: $counterPlayerOne, 
                       counterPlayerTwo: $counterPlayerTwo
            )
            
            Button{
                counterPlayerOne = 0
                counterPlayerTwo = 0
            }label: {
                Text("Reset")
            }
        }
    }
}

#Preview {
    SwiftUIState()
}

struct ListPlayer: View {
    @Binding var counterPlayerOne: Int
    @Binding var counterPlayerTwo: Int
    
    
    var body: some View {
        List{
            HStack (spacing:60){
                Text("Counter player one")
                Text("\(counterPlayerOne)")
            }
            .onTapGesture {
                counterPlayerOne += 1
            }
            HStack (spacing:60){
                Text("Counter player two")
                Text("\(counterPlayerTwo)")
            }
            .onTapGesture {
                counterPlayerTwo += 1
            }
        }
    }
}
