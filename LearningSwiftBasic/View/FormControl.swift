//
//  FormControl.swift
//  LearningSwiftBasic
//
//  Created by User50 on 05/04/24.
//

import SwiftUI

struct FormControl: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    
    var body: some View {
        Form {
            Section {
                TextField("First Name", text: $firstName)
                TextField("last Name", text: $lastName)
            } header: {
                Text("Account Info".uppercased())
            }footer: {
                Text("Please fill the textfield")
            }
            
        }
    }
}

#Preview {
    FormControl()
}
