//
//  SendView.swift
//  Crypto App
//
//  Created by Dinith Hasaranga on 2023-05-03.
//

import SwiftUI

struct SendView: View {
    @State private  var senderId = ""
    @State private  var verified = true

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
                            PaymentDetails()

                            
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
            HStack{
             
                Image("UserImage")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
                    .cornerRadius(60)
                Spacer()
                                  
                Group{
                    Text("•")
                    Text("•")
                    Text("•")
                    Text("•")
                    Text("•")
                    
                }
                Spacer()

                Image(systemName: "paperplane")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                Spacer()

                Group{
                    Text("•")
                    Text("•")
                    Text("•")
                    Text("•")
                    Text("•")
                }

                Spacer()

                Image("sender")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
                    .cornerRadius(60)
            }
        }
        .frame(maxWidth: .infinity)
        .cornerRadius(10)
        .padding(.top)

        

        
    }
}

struct SendindDetails : View{
    @State private  var receiveId = "123412341234"
    @State private  var receiverName = "Amashi Silva"
    @State private  var receiverEmail = "amashi.silva99"

    var body: some View{
        VStack(spacing: 10){
            HStack{
                Text("Reciever Id")
                    .foregroundColor(.gray)
                Spacer()
                Text("..............................................................")
                    .lineLimit(1)
                    .padding(.top,-5)
                    .opacity(0.1)

                Spacer()
                Text("\(receiveId)")
                
            }
            HStack{
                Text("Name")
                    .foregroundColor(.gray)
                Spacer()
                Text("..............................................................")
                    .lineLimit(1)
                    .padding(.top,-5)
                    .opacity(0.1)


                Spacer()
                Text("\(receiverName)")
            }
            HStack{
                Text("Email")
                    .foregroundColor(.gray)
                Spacer()
                Text(".....................................................")
                    .lineLimit(1)
                    .padding(.top,-5)
                    .opacity(0.1)

                Spacer()
                Text("\(receiverEmail)")
            }
        }
        .font(.system(size: 14))
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color("CardGray"))
        .cornerRadius(15)
        .padding(.top,10)

        

        
    }
}

struct PaymentDetails: View {
    
        @State private  var receiveId = "123412341234"
    @State private  var payment  =  "$10.00"
        @State private  var receiverName = "Amashi Silva"
        @State private  var receiverEmail = "amashi.silva99"

        var body: some View{
            VStack(){
                HStack{
                    Text("Amount you want to send (min 10$)")
                        .foregroundColor(.gray)
                        .padding(.bottom,-20)
                        .padding(.top)
                        .padding(.leading)
                        .font(.system(size: 14))

                    Spacer()
                        
                }
                
                HStack{
                    
                    VStack{
                        TextField("$", text: $payment)
                            .padding(10)
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .keyboardType(.decimalPad)
                           
                            
                    }
                  
                      
                    Spacer()
                    

                }
                VStack{
                    
                        HStack{
                            Text("Fee")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("..............................................................")
                                .lineLimit(1)
                                .padding(.top,-5)
                                .opacity(0.1)

                            Spacer()
                            Text("Free")
                                .foregroundColor(.green)
                            
                        }
                        HStack{
                            Text("Duratiion")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("..............................................................")
                                .lineLimit(1)
                                .padding(.top,-5)
                                .opacity(0.1)


                            Spacer()
                            Text("Just Now")
                        }
                        HStack{
                            Text("Total")
                                .foregroundColor(.gray)
                            Spacer()
                            Text(".....................................................")
                                .lineLimit(1)
                                .padding(.top,-5)
                                .opacity(0.1)

                            Spacer()
                            Text("$10.00")
                        }
                    }
                .padding(.horizontal)
                .font(.system(size: 14))
                
                

               Spacer()
                Text("Send $ to Amashi")
                    .frame(maxWidth: .infinity)
                    .padding(.vertical,10)
                    .background(Color.blue)
                    .cornerRadius(50)
                    .font(.body).fontWeight(.bold)
                    .padding()

                
            }
            

            

            
        }
    }




struct SendView_Previews: PreviewProvider {
    static var previews: some View {
        SendView()
    }
}



