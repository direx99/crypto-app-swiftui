//
//  AllCoinView.swift
//  Crypto App
//
//  Created by Dinith Hasaranga on 2023-02-12.
//

import SwiftUI

struct AllCoinView: View {
    @StateObject var viewModel:HomeModelView

    
    var body: some View {
        VStack(alignment: .leading){
            Text("All Coins")
                .font(.headline)
                .padding()
            
            HStack{
                Text("Coin")
                    .font(.caption)
                Spacer()
                Text("Prices")
                    .padding(.trailing,40)
                    
            }
            .font(.caption)
            .foregroundColor(.gray)
            .padding(.horizontal)
            
            
            ScrollView{
                VStack{
                    ForEach(viewModel.coins){ coin in
                        CoinRowView(coin: coin)
                    }
                }
            }
        
        }
    }
}

//struct AllCoinView_Previews: PreviewProvider {
//    static var previews: some View {
//        AllCoinView()
//    }
//}
