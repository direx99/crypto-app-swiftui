//
//  TestView.swift
//  Crypto App
//
//  Created by Dinith Hasaranga on 2023-03-19.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        VStack{
            Text("Image")
            HStack{
                Text("Name")
                Spacer()
                Text("Bitcoin")
                
            }
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
