//
//  ContentView.swift
//  Crypto App
//
//  Created by Dinith Hasaranga on 2023-02-12.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0

    var body: some View {
        
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                        .foregroundColor(.white)
                        .background(Color.white)

                    Text("Home")
                }
                .tag(0)
            TestView()
                .tabItem {
                    Image(systemName: "person.circle")
                        .foregroundColor(.white)
                        .background(Color.white)

                    Text("User")
                }
                .tag(1)
            TestView()
                .tabItem {
                    Image(systemName: "person.circle")
                        .foregroundColor(.white)
                        .background(Color.white)


                    Text("User")
                }
                .tag(2)
            TestView()
                .tabItem {
                    Image(systemName: "person.circle")
                        .foregroundColor(.white)
                        
                    Text("User")
                }
                .tag(3)

          
            
        }
          
            
        
        .accentColor(.white)
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

