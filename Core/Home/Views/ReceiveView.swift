//
//  ReceiveView.swift
//  Crypto App
//
//  Created by Dinith Hasaranga on 2023-05-03.
//

import SwiftUI

struct ReceiveView: View {
    @State private var textInput: String = ""
    @State private var verifyToken: Bool = false
    
    
    var body: some View {
        NavigationStack{
            VStack{
                CustomTopNav()
                
                
                HStack{
                    TextField("Enter token here", text: $textInput)
                        .padding(10)
                        .foregroundColor(.white)
                        .background(Color("CardGray"))
                        .cornerRadius(10)
                        .font(.system(size: 14))
                    
                    
                    if (textInput == "") || (textInput.count < 4){
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .symbolRenderingMode(.palette)
                            .foregroundStyle(Color.gray, Color("CardGray"))
                        
                            .scaledToFit()
                            .frame(width:36,height: 36)
                        
                    }
                    else{
                        Button(action: {
                            if (textInput=="1234"){
                                verifyToken = true
                                hideKeyboard()

                            }
                            else{
                                verifyToken = false
                                
                                
                                
                            }
                        }, label: {
                            Image(systemName: "arrow.right.circle.fill")
                                .resizable()
                                .symbolRenderingMode(.palette)
                                .foregroundStyle(Color.white, Color.blue)
                                .scaledToFit()
                                .frame(width:36,height: 36)
                        })
                    }
                    
                    
                }
                
                if (verifyToken == true){
                    Spacer()
                    
                    
                    
                    
                    Image(systemName: "checkmark.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(Color.white, Color("greencircle"))
                    
                        .padding(.horizontal,90)
                    Spacer()
                    
                    Text("100 USD Received")
                        .font(.system(size: 30))
                    Text("From Amashi Silva")
                        .font(.system(size: 20))
                        .foregroundColor(.gray)
                    
                    Spacer()
                    Text("Done")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(15)
                    
                    
                    
                }
                else{

                    VStack{

                        ScrollView(showsIndicators: false){
                            RecentTransaction()
                            RecentTransaction()
                            RecentTransaction()
                            RecentTransaction()
                            RecentTransaction()
                            RecentTransaction()
                            RecentTransaction()
                            RecentTransaction()
                            RecentTransaction()
                            RecentTransaction()
                        }
                    }
                    .padding(.top)
                    
                    
                }
                
                
                
            }
            
            .padding()
            .padding(.bottom,-40)
            
            Spacer()
                .background(Color("BgColor"))

            
            
            
        }
        .accentColor(.white)
        .navigationBarHidden(true) // Hide the
        .background(Color("BgColor"))
        
        
        
        
        
        
        
        
    }
}



struct RecentTransaction : View {
    var body: some View{
        VStack{
           
            VStack{
                HStack{
                    Image("sender")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                        .cornerRadius(40)
                    VStack(alignment: .leading){
                        Text("Sender Payment")
                        Text("2023 May 10")
                            .font(.system(size: 12))
                        

                    }
                    .padding(.leading,10)
                    Spacer()
                    Text("$230")
                    
                    
                }
                .padding(10)
            }

            
        }
        .background(Color("CardGray"))
        .cornerRadius(20)
        .padding(.top,5)




    }
        
}

struct ReceiveView_Previews: PreviewProvider {
    static var previews: some View {
        ReceiveView()
    }
}
struct CustomTopNav : View{
    var body : some View {
        NavigationStack{
            
            HStack{
                NavigationLink(destination: HomeView()) {
                    Image(systemName: "chevron.backward.circle")
                        .resizable()
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(Color.gray, Color("CardGray"))
                    
                        .scaledToFit()
                        .frame(width:30,height: 30)
                }
                .navigationBarHidden(true) // Hide the 

                Spacer()
                Text("Recive")
                Spacer()
                Image(systemName: "ellipsis.circle")
                    .resizable()
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(Color.gray, Color("CardGray"))
                
                    .scaledToFit()
                    .frame(width:30,height: 30)
                
                
            }
            .padding(.top,-10)
            .padding(.bottom,30)
            
        }
    }
    }


private func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder),
                                         to: nil,
                                         from: nil,
                                         for: nil)
    }
