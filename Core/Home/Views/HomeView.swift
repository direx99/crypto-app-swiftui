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
                HStack(alignment: .top){
                    
                    NavigationLink(destination: UserProfile()) {
                        Image("UserImage")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 36,height: 36)
                            .cornerRadius(50)
                                        // this sets the Back button text when a new screen is pushed
                                       
                                      
                        
                        
                        
                    }
                    VStack(alignment:.leading){
                        Text("Dinith Hasaranga")
                            .font(.system(size: 16)).fontWeight(.semibold)
                            .padding(.leading,10)
                            .padding(.top,2)
                            .foregroundColor(.white)
                        Text("Primary Account")
                            .font(.system(size: 12))
                            .padding(.leading,10)
                            .foregroundColor(.gray)
                        
                       
                    }
                    
                    Spacer()
                    Group{
                        Image(systemName: "creditcard")
                            .symbolRenderingMode(.palette)
                            .foregroundStyle( Color.white)
                            .font(.system(size: 21))
                        
                        Image(systemName: "bell.badge")
                           .symbolRenderingMode(.palette)
                           .foregroundStyle(Color.red, Color.white)
                           .font(.system(size: 19))
                       

                    }
                    .padding(.top,5)
                    


                }
                .padding(.horizontal)
                .padding(.bottom,30)
                .padding(.top,10)

                TopView()
                
                HStack(alignment: .top){
                    Text("Last 24H")
                        .font(.system(size: 12)).fontWeight(.semibold)
                        .padding(.leading)
                        .padding(.bottom,5)
                    Spacer()
                    
                    Text("See all")
                        .font(.caption)
                        .padding(.trailing)
                        .padding(.bottom,5)
                        .foregroundColor(.gray)
                    
                    
                }
                .padding(.top,30)

                
                
                
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    AllCoinView(viewModel: viewModel)
                    
                    
                    
                    
                }
                
            }
            .background(Color("BgColor"))
            
        }
        .navigationBarHidden(true) // Hide the

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
