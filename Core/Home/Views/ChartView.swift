//
//  ChartView.swift
//  Crypto App
//
//  Created by Dinith Hasaranga on 2023-03-19.
//

import SwiftUI

struct ChartView: View {
    let data: [Double]
    let maxY: Double
    let minY: Double
    init(coin:Coin){
        data = coin.sparklineIn7D?.price ?? []
        maxY = data.max() ?? 0
        minY = data.min() ?? 0

    }
    var body: some View {
        GeometryReader { geometry in
            
            
            Path { path in
                for index in data.indices{
                    let xPosition = geometry.size.width / CGFloat(data.count) * CGFloat(index + 1)
                    
                    let yAxis = maxY - minY
                    let yPosition = CGFloat((data[index]-minY)/yAxis) * geometry.size.height
                    
                    if index == 0 {
                        path.move(to: CGPoint(x: 0, y: 0))
                    }
                    path.addLine(to: CGPoint(x: xPosition, y: yPosition))
                }
            }
            .stroke(Color("CardGreen") , style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin: .round))
        }
    }
}

//struct ChartView_Previews: PreviewProvider {
//    static var previews: some View {
//        ChartView(coin: Double.coin)
//    }
//}
