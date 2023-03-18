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
             UserData(num: 12712.78)
             ScrollView(.horizontal,showsIndicators: false){
                 HStack(alignment:.center){
                     TopIcon(iconName: "arrow.down.left", iconText: "Recieve")
                     TopIcon(iconName: "arrow.up.right", iconText: "Send")
                     TopIcon(iconName: "arrow.triangle.swap", iconText: "Swap")
                     TopIcon(iconName: "arrow.down.left", iconText: "Recieve")
                     TopIcon(iconName: "arrow.up.right", iconText: "Send")
                     TopIcon(iconName: "arrow.triangle.swap", iconText: "Swap")
                 }
                 .padding(.top,40)
                
                 
                 

               
             }
             
         }
     }
 }


struct UserData: View {
    
    let num: Float
     var body: some View {

         let integerPart = Int(num.rounded(.down))
         let fractionalPart = Int((num - Float(integerPart)) * 100)
         
         
         VStack{
             HStack(spacing: 0){
                 Text("$\(integerPart).")
                     .frame(height:50,alignment: .bottom)
                     .font(.system(size: 50).weight(.bold))
                     Text("\(fractionalPart)")
                     .font(.system(size: 35).weight(.bold))
                         .frame(height:50,alignment: .bottom)
                         .padding(.bottom,10)

             }
             HStack{
                 Group{
                     Text("+6.75%")
                     Divider()
                     Text("+$452.95")
                 }
                 .font(.caption)
                     .foregroundColor(.black)

             }
             .padding(5)
             .padding(.horizontal,10)
             .background(Color("CardGreen"))
             .cornerRadius(50)
             .frame(width: 160, height:20)


             
             
           
         }
     }
 }


struct TopIcon: View {
    
    var iconName : String
    var iconText : String

    var body: some View {
        
        VStack(alignment: .center){
            Image(systemName:"\(iconName)")
                .resizable()
                .scaledToFit()
                .padding(15)
                .frame(width: 54,height: 54)
                .foregroundColor(.black)
                .background(Color.white)
                .cornerRadius(18)
            Text("\(iconText)")
                .font(.caption)
                .frame(width: .infinity,alignment: .center)

               
        }
        .frame(width: .infinity)
        .padding(.leading,20)


        
    }
    
}
