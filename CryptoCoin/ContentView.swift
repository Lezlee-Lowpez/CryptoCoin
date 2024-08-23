//
//  ContentView.swift
//  CryptoCoin
//
//  Created by Lesley Lopez on 8/21/24.
//

import SwiftUI

struct ContentView: View {
    
    var dataService = DataService()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .onAppear{
            Task {
                await dataService.getData()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
