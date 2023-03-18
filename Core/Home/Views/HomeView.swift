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
                
                //TopMoversView(viewModel: viewModel)
                //TopMoversView(viewModel: viewModel)
                
                // all coins
                
                Divider()
                TopView()
                AllCoinView(viewModel: viewModel)
                
            }
            
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
