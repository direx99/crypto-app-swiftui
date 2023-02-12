//
//  CoinRowView.swift
//  Crypto App
//
//  Created by Dinith Hasaranga on 2023-02-12.
//

import SwiftUI
import Kingfisher

struct CoinRowView: View {
    let coin: Coin

    var body: some View {
        HStack{
            //rank
            Text("\(coin.marketCapRank)")
                .font(.caption)
                .foregroundColor(.gray)
                .padding(.horizontal ,10)
            //image
            KFImage(URL(string: coin.image))
                .resizable()
                .scaledToFit()
                .frame(width: 32 ,height: 32)
            
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
                Text("\(coin.currentPrice.toCurrency())")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading,4)
                
                Text(coin.priceChangePercentage24H.toPrecentString())
                    .font(.caption)
                    .padding(.leading,6)
                    .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
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
