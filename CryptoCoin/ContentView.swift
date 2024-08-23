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
        
        @Bindable var model = cryptoModel
        
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
                        
                        // when you tap on a name in the list we set that to the coin var in our model
                        // so its universally accessable
                    .onTapGesture(
                        perform: {
                        cryptoModel.coin = coin
                        })
                    }
                    
                }
                
                .listStyle(.plain)
                .padding()
            }
        }
       
        .onAppear{
            cryptoModel.getCoins()
        }
        .sheet(item: $model.coin) { item in
            DetailView()
        }
        
    }
}

#Preview {
    ContentView()
}
