//
//  TopMoverItemView.swift
//  Crypto App
//
//  Created by Dinith Hasaranga on 2023-02-12.
//

import SwiftUI

struct TopMoverItemView: View {
    var body: some View {
        VStack(alignment: .leading) {
            // image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            //coin info
            HStack{
                Text("BTC")
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text("$20,200.00")
                    .font(.caption)
                    .foregroundColor(.gray)
                

            }
            //coin precent change
            Text("+ 5.6%")
                .foregroundColor(.green)
                .font(.title2)
                
            
        }
        .frame(width: 140, height: 140)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4), lineWidth: 2)
        )
    }
}

struct TopMoverItemView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoverItemView()
    }
}
