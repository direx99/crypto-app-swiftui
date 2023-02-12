//
//  CoinRowView.swift
//  Crypto App
//
//  Created by Dinith Hasaranga on 2023-02-12.
//

import SwiftUI

struct CoinRowView: View {
    var body: some View {
        HStack{
            //rank
            Text("1")
                .font(.caption)
                .foregroundColor(.gray)
            //image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 32 ,height: 32)
                .foregroundColor(.orange)
            
            //coin name info
            VStack(alignment: .leading, spacing: 4){
                Text("Bitcoin")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading,4)
                
                Text("BTC")
                    .font(.caption)
                    .padding(.leading,4)
            }
            .padding(.leading,2)
            
            //coin price info
            
            Spacer()
            VStack(alignment: .leading, spacing: 4){
                Text("$20,424.00")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading,4)
                
                Text("-4.42%")
                    .font(.caption)
                    .padding(.leading,4)
                    .foregroundColor(.red)
            }
            .padding(.leading,2)
        }
        .padding(.horizontal)
        .padding(.vertical,4)
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        CoinRowView()
    }
}
