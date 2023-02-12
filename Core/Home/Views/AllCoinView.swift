//
//  AllCoinView.swift
//  Crypto App
//
//  Created by Dinith Hasaranga on 2023-02-12.
//

import SwiftUI

struct AllCoinView: View {
    var body: some View {
        VStack{
            Text("All Coins")
                .font(.headline)
            
            HStack{
                Text("Coin")
                    .font(.caption)
                Spacer()
                Text("Prices")
                    
            }
            .font(.caption)
            .foregroundColor(.gray)
            .padding(.horizontal)
            
            
            ScrollView{
                VStack{
                    ForEach(0 ..< 50 ,id: \.self){ _ in
                        CoinRowView()
                    }
                }
            }
        
        }
    }
}

struct AllCoinView_Previews: PreviewProvider {
    static var previews: some View {
        AllCoinView()
    }
}
