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
        VStack(alignment: .center){
            TopView()
            
                HStack(alignment: .top){
                    Text("Top 10")
                        .font(.title).fontWeight(.bold)
                        .padding(.leading)
                        .padding(.bottom,5)
                        .padding(.top,30)
                    
                    Spacer()
                }
               
                
            
         
            NavigationView {
                ScrollView(.vertical, showsIndicators: false) {

                    AllCoinView(viewModel: viewModel)
                    
                }
                
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
