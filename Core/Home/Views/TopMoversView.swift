//
//  TopMoversView.swift
//  Crypto App
//
//  Created by Dinith Hasaranga on 2023-02-12.
//

import SwiftUI

struct TopMoversView: View {
    @StateObject var viewModel: HomeModelView
    var body: some View {
        VStack(alignment: .leading){
            Text("Top Movers")
                .font(.headline)
            
            ScrollView(.horizontal ,showsIndicators: false){
                HStack(spacing: 16){
                    ForEach(viewModel.topMovingCoins){ coin in
                        TopMoverItemView(coin: coin)
                    }
                }
            }
        }
        .padding()
    }
}
struct TopMoversView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversView(viewModel: HomeModelView())
    }
}
