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
                HStack{
                    TextField("Enter token here", text: $textInput)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color("CardGray"))
                        .cornerRadius(10)
                    
                    
                    if (textInput == "") || (textInput.count < 4){
                        Image(systemName: "checkmark.circle.fill")
                            .symbolRenderingMode(.palette)
                            .foregroundStyle(Color.gray, Color("CardGray"))
                            .font(.system(size: 40))
                    }
                    else{
                        Button(action: {
                            if (textInput=="1234"){
                                verifyToken = true
                            }
                            else{
                                verifyToken = false
                                
                                
                            }
                        }, label: {
                            Image(systemName: "arrow.right.circle.fill")
                                .symbolRenderingMode(.palette)
                                .foregroundStyle(Color.white, Color.blue)
                                .font(.system(size: 36))
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
                
            }
            
            .padding()
            Spacer()

            
        }
        .navigationTitle("Receive")
        .accentColor(.white)
        
        

        
    }
}

struct ReceiveView_Previews: PreviewProvider {
    static var previews: some View {
        ReceiveView()
    }
}
