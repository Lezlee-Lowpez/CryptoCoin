//
//  CryptoModel.swift
//  CryptoCoin
//
//  Created by Lesley Lopez on 8/21/24.
//

import Foundation
import SwiftUI

//Follow the observation Pattern
@Observable
class CryptoModel {
    
    var coins = [CryptoCoins]()
    var coin: CryptoCoins?
    
    var service = DataService()
    
    func getCoins() {
        Task {
            coins = await service.getData()
        }
    }
}
