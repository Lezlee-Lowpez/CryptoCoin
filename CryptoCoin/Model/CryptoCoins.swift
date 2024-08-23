//
//  CryptoCoins.swift
//  CryptoCoin
//
//  Created by Lesley Lopez on 8/21/24.
//

import Foundation

struct CryptoCoins: Codable, Identifiable{
    var id: String
    var name: String
    var image: String
    var current_price: Double
}

