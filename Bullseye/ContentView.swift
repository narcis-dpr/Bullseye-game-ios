//
//  ContentView.swift
//  Bullseye
//
//  Created by Narges on 31.10.23.
//

import SwiftUI

struct ContentView: View {
    @State var alertIsVisible: Bool = false
    var body: some View {
        VStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Welcome To app!")
                    .fontWeight(.bold)
                    .foregroundColor(.green)
            }
            .padding()
            
            Button(action: {
                print("Button pressed!")
                self.alertIsVisible = true
            }) {
                Text("Hit me!")
            }
            .alert(isPresented: self.$alertIsVisible) {
                Alert(title: Text("Hey There!"),
                message: Text("this is a pop-up"),
                      dismissButton: .default(Text("Awesome!")))
            }
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
