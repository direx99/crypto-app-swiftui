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
    @State private var isDetailViewActive = false

    var body: some View {
        
            NavigationLink(destination: DetailView(coin: self.coin)) {
                HStack{
                    //rank
                    
                    //image
                    KFImage(URL(string: coin.image))
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50 ,height: 50)
                    
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
                    
                    
                    
                    
                    
                }
                
                
            }
            .padding(.horizontal,20)
            .padding(.vertical,20)
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


