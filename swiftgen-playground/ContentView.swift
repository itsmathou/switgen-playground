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
            Text(L10n.Main.helloWorld)
                .padding()
            
            HStack {
                Button(L10n.Shared.okCta) {
                    print("Okay 👻")
                }
                
                Button(L10n.Shared.cancelCta) {
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
        }
    }
}
