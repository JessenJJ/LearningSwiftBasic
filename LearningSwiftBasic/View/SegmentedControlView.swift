//
//  SegmentedControlView.swift
//  LearningSwiftBasic
//
//  Created by User50 on 05/04/24.
//

import SwiftUI

struct SegmentedControlView: View {
    @State private var selectedFlavor: Flavor = .chocolate
    
    var body: some View {
        NavigationStack{
            List{
                Picker("Select your flavor", selection: $selectedFlavor){
                    Text("Chocolate")
                        .tag(Flavor.chocolate)
                    
                    Text("Vanila")
                        .tag(Flavor.vanila)
                    
                    Text("Strawberry")
                        .tag(Flavor.strawberry)
                }
                .pickerStyle(.segmented)
                
                Text("Selecting \(selectedFlavor)")
                
                
                
            }
        }
    }
}

#Preview {
    SegmentedControlView()
}

enum Flavor: String , CaseIterable{
    case chocolate, vanila, strawberry
    var id: Self {
        self
    }
}
