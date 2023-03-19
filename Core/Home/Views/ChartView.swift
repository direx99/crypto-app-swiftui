//
//  ChartView.swift
//  Crypto App
//
//  Created by Dinith Hasaranga on 2023-03-19.
//

import SwiftUI

struct ChartView: View {
    let data: [Double]
    init(coin:Coin){
        data = coin.sparklineIn7D?.price ?? []
    }
    var body: some View {
      Text("Chart")
    }
}

//struct ChartView_Previews: PreviewProvider {
//    static var previews: some View {
//        ChartView(coin: Double.coin)
//    }
//}
