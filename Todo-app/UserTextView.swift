//
//  UserTextView.swift
//  Todo-app
//
//  Created by Maheshi Anuradha on 2024-10-04.
//

import SwiftUI

struct UserTextView: View {
    @Binding var tasks: [String]
    @State var userInput : String = ""
    
    var body: some View {
        VStack{
            TextField("Task name", text: $userInput)
            
            Button("Add task"){
                tasks.append(userInput)
                userInput = ""
            }
        }
    }
}

#Preview {
    UserTextView(tasks: .constant([]))
}
