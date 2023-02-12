//
//  CoinRowView.swift
//  Crypto App
//
//  Created by Dinith Hasaranga on 2023-02-12.
//

import SwiftUI

struct CoinRowView: View {
    let coin: Coin

    var body: some View {
        HStack{
            //rank
            Text("\(coin.marketCapRank ?? 1)")
                .font(.caption)
                .foregroundColor(.gray)
            //image
            Image(systemName: "\(coin.image)")
                .resizable()
                .scaledToFit()
                .frame(width: 32 ,height: 32)
                .foregroundColor(.orange)
            
            //coin name info
            VStack(alignment: .leading, spacing: 4){
                Text("\(coin.name)")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading,4)
                
                Text("\(coin.symbol.uppercased())")
                    .font(.caption)
                    .padding(.leading,4)
            }
            .padding(.leading,2)
            
            //coin price info
            
            Spacer()
            VStack(alignment: .trailing, spacing: 4){
                Text("\(coin.currentPrice)")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading,4)
                
                Text("\(coin.priceChangePercentage24H)")
                    .font(.caption)
                    .padding(.leading,4)
                    .foregroundColor(.red)
            }
            .padding(.leading,2)
        }
        .padding(.horizontal)
        .padding(.vertical,4)
    }
}

//struct CoinRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        CoinRowView()
//    }
//}
