//
//  ContentView.swift
//  swiftgen-playground
//
//  Created by Mathilde Ferrand on 13/02/2022.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.locale) var locale
    
    var body: some View {
        VStack {
            Text("main.hello_world")
                .padding()
            
            HStack {
                Button("shared.ok_cta") {
                    print("Okay 👻")
                }
                
                Button("shared.cancel_cta") {
                    print("Cancel 🤷🏻‍♀️")
                }
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environment(\.locale, .init(identifier: "es"))
            
            ContentView()
                .environment(\.locale, .init(identifier: "fr"))
        }
    }
}
