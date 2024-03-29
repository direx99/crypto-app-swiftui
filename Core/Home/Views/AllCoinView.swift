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
        
        if  viewModel.isLoaded{
            VStack(alignment: .leading){
                
                
                ScrollView{
                    VStack{
                        ForEach(viewModel.coins){ coin in
                            CoinRowView(coin: coin)
                        }
                    }
                }
                
            }
            
        }
            
        else{
            ProgressView()
        }
        
        
    }
}

//struct AllCoinView_Previews: PreviewProvider {
//    static var previews: some View {
//        AllCoinView()
//    }
//}
