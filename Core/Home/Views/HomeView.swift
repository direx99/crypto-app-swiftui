//
//  HomeView.swift
//  Crypto App
//
//  Created by Dinith Hasaranga on 2023-02-12.
//

import SwiftUI

struct HomeView: View {
    init() {
            UINavigationBar.appearance().tintColor = .red
        }
    @StateObject var viewModel = HomeModelView()

    var body: some View {
        NavigationStack {

        VStack(alignment: .center){
            HStack{
                
                Spacer()
                NavigationLink(destination: UserProfile()) {
                    Image("UserImage")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50,height: 50)
                        .cornerRadius(21)
                       
                    
                    
                    
                }
            }
            .padding(.horizontal)
            .padding(.bottom,30)
                    
            TopView()
            
                HStack(alignment: .top){
                    Text("Top 10")
                        .font(.title).fontWeight(.bold)
                        .padding(.leading)
                        .padding(.bottom,5)
                        .padding(.top,30)
                    
                    Spacer()
                }
               
                
            
         
                ScrollView(.vertical, showsIndicators: false) {
                    
                    AllCoinView(viewModel: viewModel)

                    
                    
                    
                }
            
            }
        .background(Color("BgColor"))

        }

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
