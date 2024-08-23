//
//  CryptoCoinApp.swift
//  CryptoCoin
//
//  Created by Lesley Lopez on 8/21/24.
//

import SwiftUI

@main
struct CryptoCoinApp: App {
    
    @State var cryptoModel = CryptoModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(cryptoModel)
        }
    }
}
