//
//  ImageView.swift
//  CryptoCoin
//
//  Created by Lesley Lopez on 8/23/24.
//

import SwiftUI

struct ImageView: View {
    
    var imageUrl: String
    
    var body: some View {
        
        let url = URL(string: imageUrl)
        
        AsyncImage(url: url){ phase in
            
            if let image = phase.image{
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } else if phase.error != nil {
                 Text("Failed to load image")

            }
            else {
                ProgressView()
            }
            
        }
    }
}

#Preview {
    ImageView(imageUrl: "https://images.unsplash.com/photo-1722630810924-5cd9fbf45de7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&i")
}
