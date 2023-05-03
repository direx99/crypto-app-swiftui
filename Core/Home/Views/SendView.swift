//
//  SendView.swift
//  Crypto App
//
//  Created by Dinith Hasaranga on 2023-05-03.
//

import SwiftUI

struct SendView: View {
    @State private  var senderId = ""
    @State private  var verified = false

    var body: some View {
        VStack{
            NavigationStack{
                
                HStack{
                    VStack(alignment: .leading){
                        Text("Base Wallet")
                            .font(.system(size: 12))
                            .foregroundColor(.gray)
                        Text("$12,781.87")
                            .font(.system(size:40).weight(.semibold))
                        HStack{
                            TextField("Enter Sender Id", text: $senderId)
                                .padding(10)
                                .foregroundColor(.white)
                                .background(Color("CardGray"))
                                .cornerRadius(10)
                            if (senderId == "") || (senderId.count < 12){
                                
                                Image(systemName: "arrow.right.circle.fill")
                                    .symbolRenderingMode(.palette)
                                    .foregroundStyle(Color.gray, Color("CardGray"))
                                    .font(.system(size: 36))
                            }
                            else {
                                Button(action: {
                                    if (senderId=="123412341234"){
                                        verified = true
                                    }
                                    else{
                                        verified = false
                                        
                                        
                                    }
                                }, label: {
                                    Image(systemName: "arrow.right.circle.fill")
                                        .symbolRenderingMode(.palette)
                                        .foregroundStyle(Color.white, Color.blue)
                                        .font(.system(size: 36))
                                })
                            }
                            
                        }
                        if(verified == true ){
                            
                            VerifiedSender()
                            SendindDetails()

                            
                        }
                        else{
                            
                            NotVerifiedSender()
                            
                        }
                        
                    }
                    
                    Spacer()
                    
                }

                Spacer()
                

            }
            
            .padding()

            .navigationTitle("Send Crypto")

        }
        .ignoresSafeArea(.keyboard, edges: .top)
        .background(Color("BgColor"))

    }

    
    
}




struct NotVerifiedSender : View{
    var body: some View{
        VStack{
            Text("hhhh")
        }
        .frame(width: .infinity)
    }
}

struct VerifiedSender : View{
    var body: some View{
        VStack{
            Text("Dinith")
        }
        .padding()
        .frame(maxWidth: .infinity)
        .frame(height: 140)
        .background(Color("CardGray"))
        .cornerRadius(10)
        .padding(.top)

        

        
    }
}

struct SendindDetails : View{
    var body: some View{
        VStack{
            Text("Dinith")
        }
        .padding()
        .frame(maxWidth: .infinity)
        .frame(height: 140)
        .background(Color("CardGray"))
        .cornerRadius(10)
        .padding(.top,10)

        

        
    }
}




struct SendView_Previews: PreviewProvider {
    static var previews: some View {
        SendView()
    }
}



