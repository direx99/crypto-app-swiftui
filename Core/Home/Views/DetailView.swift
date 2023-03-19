//
//  DetailView.swift
//  Crypto App
//
//  Created by Dinith Hasaranga on 2023-03-19.
//

import SwiftUI
import Kingfisher

struct DetailView: View {
    let coin: Coin
    
    var body: some View {
        NavigationStack{
            
                
            VStack{
                Group{
                    Text("Current Price")
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity,alignment: .leading)
                    HStack{
                        Text("$442.")
                            .font(.system(size: 40)).bold()
                            .foregroundColor(.white)
                        
                            .padding(.top,-5)
                        Text("78")
                            .font(.system(size: 30)).bold()
                            .foregroundColor(.white)
                        Spacer()
                        
                    }
                    
                }
                .padding(.horizontal,20)
                
                
                
                
                
                
                Spacer()
                
                VStack{
                    Group{
                        HStack{
                            Text("Opening Price")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Bitcoin")
                                .foregroundColor(Color.white)
                        }
                        
                        
                        
                        
                        VStack{
                            
                        }
                        .frame(maxWidth: .infinity,maxHeight: 1)
                        .background(Color("DivederGray"))
                        HStack{
                            Text("Name")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Bitcoin")
                                .foregroundColor(Color.white)
                        }
                        
                        
                        
                        
                        VStack{
                            
                        }
                        .frame(maxWidth: .infinity,maxHeight: 1)
                        .background(Color("DivederGray"))
                        HStack{
                            Text("Name")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Bitcoin")
                                .foregroundColor(Color.white)
                        }
                        
                        
                        
                        
                        VStack{
                            
                        }
                        .frame(maxWidth: .infinity,maxHeight: 1)
                        .background(Color("DivederGray"))
                        HStack{
                            Text("Name")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Bitcoin")
                                .foregroundColor(Color.white)
                               
                        }
                        
                    }
                    .padding(.horizontal,20)
                    .padding(.vertical,10)

                    
                    
                 
                    
                    HStack(spacing:10){
                        Text("Sell")
                            .padding()
                            .font(.title3).bold()
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity,alignment: .center)
                            .background(Color("BtnOrange"))
                            .cornerRadius(35)
                        
                        Spacer()
                        Text("Buy")
                            .padding()
                            .font(.title3).bold()
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity,alignment: .center)
                            .background(Color("CardGreen"))
                            .cornerRadius(35)
                        
                        
                        
                    }
                    .padding()
                }

                
            }
            .background(Color("BgColor"))

        }
        .navigationTitle("\(coin.name)")
    }
    
}

//struct DetailView_Previews: PreviewProvider {
//    
//
//    static var previews: some View {
//        DetailView(coin: Coin)
//    }
//}
