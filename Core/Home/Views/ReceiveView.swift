//
//  ReceiveView.swift
//  Crypto App
//
//  Created by Dinith Hasaranga on 2023-05-03.
//

import SwiftUI

struct ReceiveView: View {
    @State private var textInput: String = ""

    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    TextField("Enter token here", text: $textInput)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color("CardGray"))
                        .cornerRadius(10)
                    
                    
                    if (textInput == "") || (textInput.count < 24){
                        Image(systemName: "checkmark.circle.fill")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(Color.gray, Color("CardGray"))
                        .font(.system(size: 40))
                    }
                    else{
                        Image(systemName: "checkmark.circle.fill")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(Color.white, Color.blue)
                        .font(.system(size: 40))
                    }

                        
                    
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
