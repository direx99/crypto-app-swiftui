//
//  TopView.swift
//  Crypto App
//
//  Created by Dinith Hasaranga on 2023-03-18.
//

import SwiftUI

struct TopView: View {
    

     var body: some View {
         VStack{
             UserData(num: 2712.78)
         }
     }
 }


struct UserData: View {
    
    let num: Float
     var body: some View {

         let integerPart = Int(num.rounded(.down))
         let fractionalPart = Int((num - Float(integerPart)) * 100)
         
         
         VStack{
             HStack(){
                 Text("$\(integerPart).")
                     .frame(height:50,alignment: .bottom)
                     .font(.system(size: 40).weight(.semibold))
                     Text("\(fractionalPart)")
                     .font(.system(size: 25).weight(.semibold))
                         .frame(height:50,alignment: .bottom)
                         .padding(.bottom,10)

                   

             }
             
             
           
         }
     }
 }
