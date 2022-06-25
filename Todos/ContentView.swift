//
//  ContentView.swift
//  Todos
//
//  Created by T Krobot on 25/6/22.
//

import SwiftUI

struct ContentView: View {
    @State var todos = [
    Todo(title: "Watch some paw patrol📺", isCompleted: true),
    Todo(title: "Look at slides💻", isCompleted: true),
    Todo(title: "Joining giveaways🎁"),
    Todo(title: "Do code👩🏻‍💻")
    ]
    
    var body: some View {
        //for todos in todo
        NavigationView {
            List(todos) { todo in
                HStack {
                    Image(systemName: todo.isCompleted ? "checkmark.circle.fill" : "circle")
                        .foregroundColor(.black)
                    Text(todo.title)
                }
            }
            .navigationTitle("Important SAP")
            .foregroundColor(.blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
