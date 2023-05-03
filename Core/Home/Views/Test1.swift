//
//  Test1.swift
//  Crypto App
//
//  Created by Dinith Hasaranga on 2023-05-03.
//

import SwiftUI

struct Test1: View {

    @State private var showAlert = false
    @State private var userInput = ""

    var body: some View {
        Button("Show Alert") {
            self.showAlert = true
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Input"), message: Text("Enter some text:"), primaryButton: .default(Text("OK")) {
                // handle OK button action
            }, secondaryButton: .cancel())
        }
    }
}

struct Test1_Previews: PreviewProvider {
    static var previews: some View {
        Test1()
    }
}
