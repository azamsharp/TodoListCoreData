//
//  ContentView.swift
//  SimpleTodoApp
//
//  Created by Mohammad Azam on 5/15/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var title: String = ""
    
    var body: some View {
        NavigationView {
        VStack {
            TextField("Title", text: $title)
                .textFieldStyle(.roundedBorder)
            
            List(1...20, id: \.self) { index in
                Text("\(index)")
            }.listStyle(.plain)
            
            Spacer()
                .navigationTitle("Tasks")
            
        }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
