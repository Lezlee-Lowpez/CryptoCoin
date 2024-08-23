//
//  ContentView.swift
//  CryptoCoin
//
//  Created by Lesley Lopez on 8/21/24.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(CryptoModel.self) var cryptoModel
    
    
    var body: some View {
        ZStack {
            Color.yellow
                .ignoresSafeArea()
            
            VStack {
                
                Text("Crypto Coins")
                    .font(.title)
                    .bold()
                
                List {
                    ForEach(cryptoModel.coins){ coin in
                        Text(coin.name)
                        
                    }
                }
                .listStyle(.plain)
                .padding()
            }
        }
       
        .onAppear{
            cryptoModel.getCoins()
        }
        
    }
}

#Preview {
    ContentView()
}
