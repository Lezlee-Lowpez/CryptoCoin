//
//  DataService.swift
//  CryptoCoin
//
//  Created by Lesley Lopez on 8/21/24.
//

import Foundation

struct DataService {
    
    var apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String
    
    func getData() async -> [CryptoCoins]{
        
        //api key
        guard apiKey != nil else {
            print("API key is not valid")
            return []
        }
        
        //url
        if let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd") {
  
            //url request
            var request = URLRequest(url: url)
            request.addValue(apiKey!, forHTTPHeaderField: "x-cg-demo-api-key")
            
            //url session
            do {
                let (data, response) = try await URLSession.shared.data(for:request)
                
                
                let decoder = JSONDecoder()
                let results = try decoder.decode([CryptoCoins].self, from: data)
                return results
                
            } catch {
                print(error.localizedDescription)
            }

        }else {
            return []
        }
        
        return []
    }
    
}
