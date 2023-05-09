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
    @State private var isSheetPresented = false


   
  
    var body: some View {
        NavigationStack{
            
            let val : Float = Float(coin.currentPrice)
            let integerPart = Float(coin.currentPrice.rounded(.down))
            let numString = String(format: "%.2f", coin.currentPrice)

            let val2 = (val - integerPart) * 100
            let priceIntString = Int(coin.currentPrice)
            let priceFloatString = String(format: "%.0f", val2)

            
            //let integerPart2 = Int(fractionalPart.rounded(.down))
                
            VStack{
                ChartView(coin: coin)
                Group{
                    Text("Current Price")
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .padding(.top,20)
                   


                    HStack{
                        Text("$\(priceIntString).")
                            .font(.system(size: 40)).bold()
                            .foregroundColor(.white)
                        
                            .padding(.top,-5)
                        
                        if(val2>0.9){
                            Text("\(priceFloatString)")
                                .font(.system(size: 30)).bold()
                                .foregroundColor(.white)
                                .padding(.leading,-10)
                        }
                        else{
                            Text("0\(priceFloatString)")
                                .font(.system(size: 30)).bold()
                                .foregroundColor(.white)
                                .padding(.leading,-10)

                        }
                      
                        Spacer()
                        
                    }
                    
                }

                .padding(.horizontal,20)

                Spacer()
                
                VStack{
                    Group{
                        HStack{
                            Text("Market Cap Rank")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("\(coin.marketCapRank)")
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
                        Button ("Sell"){
                            isSheetPresented = true

                        }
                      
                            .padding()
                            .font(.title3).bold()
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity,alignment: .center)
                            .background(Color("BtnOrange"))
                            .cornerRadius(35)
                            .sheet(isPresented: $isSheetPresented) {
                                       BottomSheetView()
                                    .presentationDetents([.height(100)])
                                   }
                        
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

struct BottomSheetView: View {
    var body: some View {
        VStack {
            Text("This is a bottom sheet")
                .font(.headline)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
       
    }
}

//struct DetailView_Previews: PreviewProvider {
//    
//
//    static var previews: some View {
//        DetailView(coin: Coin)
//    }
//}
