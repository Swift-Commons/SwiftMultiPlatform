//
//  ContentView.swift
//  SwiftMultiPlatformDarwin
//
//  Created by hggz on 7/17/23.
//

import SwiftUI
import MultiPlatformSharedLib

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("\(MultiPlatformSharedLib.getGreeting())")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
