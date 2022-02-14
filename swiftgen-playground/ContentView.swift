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
            Text(L10n.Main.helloWorld.key)
                .padding()
            
            HStack {
                Button(L10n.Shared.okCta.key) {
                    print("Okay 👻")
                }
                
                Button(L10n.Shared.cancelCta.key) {
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
            
            ContentView()
                .environment(\.locale, .init(identifier: "en"))
        }
    }
}
