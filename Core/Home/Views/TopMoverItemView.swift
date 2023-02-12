//
//  TopMoverItemView.swift
//  Crypto App
//
//  Created by Dinith Hasaranga on 2023-02-12.
//

import SwiftUI
import Kingfisher

struct TopMoverItemView: View {
    let coin : Coin
    var body: some View {
        VStack(alignment: .leading) {
            // image
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            //coin info
            HStack{
                Text("\(coin.symbol.uppercased())")
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text("\(coin.currentPrice.toCurrency())")
                    .font(.caption)
                    .foregroundColor(.gray)
                

            }
            //coin precent change
            Text(coin.priceChangePercentage24H.toPrecentString())
                .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
                .font(.title2)
                
            
        }
        .frame(width: 140, height: 140)
        .background(Color("ItemBackGroundColor"))
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4), lineWidth: 2)
        )
    }
}

//struct TopMoverItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopMoverItemView()
//    }
//}
