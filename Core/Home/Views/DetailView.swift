//
//  DetailView.swift
//  Crypto App
//
//  Created by Dinith Hasaranga on 2023-03-19.
//

import SwiftUI
import Kingfisher

struct DetailView: View {
    let coin: Coin
    
    var body: some View {
        VStack {
            //image
            KFImage(URL(string: coin.image))
                .resizable()
                .scaledToFit()
                .frame(width: 50 ,height: 50)
            
            HStack{
                Text("Coin")
                Spacer()
                Text("\(coin.name)")

            }
            HStack{
                Text("Current Price")
                Spacer()
                Text("Price: \(coin.currentPrice.toCurrency())")
                

            }
            
            Text("\(coin.name)")
            Text("Symbol: \(coin.symbol)")
            Text("24h Price Change: \(coin.priceChangePercentage24H.toPrecentString())")
            // Add other data as needed
        }
    }
}

//struct DetailView_Previews: PreviewProvider {
//    
//
//    static var previews: some View {
//        DetailView(coin: Coin)
//    }
//}
