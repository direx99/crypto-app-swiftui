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
                
                //image
                KFImage(URL(string: coin.image))
                    .resizable()
                    .scaledToFit()
                    .frame(width: 45 ,height: 45)
                
                //coin name info
                VStack(alignment: .leading, spacing: 4){
                    Text("\(coin.name)")
                        .font(.title3)
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
                
                NavigationLink(destination: DetailView(coin: self.coin)) {
                    
                }
                
                
            }
            .padding(.horizontal,20)
            .padding(.vertical,15)
            .background(Color("CardGray"))
            .cornerRadius(25)
            .padding(.top,5)
            .padding(.horizontal,10)
            
            
            
        }
        
    
    
}
//struct CoinRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        CoinRowView()
//    }
//}


struct DetailView: View {
    let coin: Coin
    
    var body: some View {
        VStack {
            Text("Name: \(coin.name)")
            Text("Symbol: \(coin.symbol)")
            Text("Price: \(coin.currentPrice.toCurrency())")
            Text("24h Price Change: \(coin.priceChangePercentage24H.toPrecentString())")
            // Add other data as needed
        }
    }
}
