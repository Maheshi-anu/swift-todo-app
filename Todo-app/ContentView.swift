//
//  ContentView.swift
//  Todo-app
//
//  Created by Maheshi Anuradha on 2024-10-04.
//

import SwiftUI

struct ContentView: View {
    @State var tasks: [String] = []
    
    var body: some View {
        VStack {
            UserTextView (tasks: $tasks)
            
            List(tasks, id: \.self) {tasks in
                Text(tasks)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
