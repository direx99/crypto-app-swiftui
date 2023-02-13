//
//  HomeView.swift
//  Crypto App
//
//  Created by Dinith Hasaranga on 2023-02-12.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeModelView()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
              // top moves
                
                TopMoversView(viewModel: viewModel)
                
                // all coins
                
                Divider()
                
                AllCoinView(viewModel: viewModel)
                
            }
            
            .navigationTitle("Live Prices")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
