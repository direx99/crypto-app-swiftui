//
//  UserProfile.swift
//  Crypto App
//
//  Created by Dinith Hasaranga on 2023-03-19.
//

import SwiftUI

struct UserProfile: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack(alignment: .top){
                Text("Dinith Hasaranga")
                    .font(.system(size: 40))
                
                
            }
            Spacer()
        }
    }

}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}
