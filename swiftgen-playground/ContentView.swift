//
//  ContentView.swift
//  swiftgen-playground
//
//  Created by Mathilde Ferrand on 13/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Text(L10n.Main.helloWorld.localized)
                .padding()
            
            HStack {
                Button(L10n.Shared.okCta.localized) {
                    print("Okay 👻")
                }
                
                Button(L10n.Shared.cancelCta.localized) {
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
