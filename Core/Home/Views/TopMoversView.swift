//
//  TopMoversView.swift
//  Crypto App
//
//  Created by Dinith Hasaranga on 2023-02-12.
//

import SwiftUI

struct TopMoversView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Top Movers")
                .font(.headline)
            
            ScrollView(.horizontal ,showsIndicators: false){
                HStack(spacing: 16){
                    ForEach(0 ..< 5, id: \.self){ _ in
                        TopMoverItemView()
                    }
                }
            }
        }
        .padding()
    }
}
struct TopMoversView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversView()
    }
}
