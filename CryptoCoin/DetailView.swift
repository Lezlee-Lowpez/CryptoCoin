//
//  DetailView.swift
//  CryptoCoin
//
//  Created by Lesley Lopez on 8/23/24.
//

import SwiftUI

struct DetailView: View {
    
    @Environment(CryptoModel.self) var cryptoModel
    
    var body: some View {
        
        if let theCoin = cryptoModel.coin {
            VStack{
                
                Text("might insert images here")
                    .padding()
                
                Text(cryptoModel.coin?.name ?? "Couldn't retrieve name")
                    .font(.title)
                    .bold()
                    .padding()
                
                Text("$\(String(cryptoModel.coin?.current_price ?? 0.0))")
                    .padding()
                
            }
        } else {
            Text("No coin selected.")
        }
        
       
    }
}

#Preview {
    DetailView()
}
