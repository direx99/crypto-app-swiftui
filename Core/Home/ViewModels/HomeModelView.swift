//
//  HomeModelView.swift
//  Crypto App
//
//  Created by Dinith Hasaranga on 2023-02-12.
//

import SwiftUI

class HomeModelView: ObservableObject {
    
    @Published var coins = [Coin]()
    
    init(){
        fetchCoinData()
    }
    
    func fetchCoinData(){
        
        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=24h"
        
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error{
                print("Debug : error \(error.localizedDescription)")
                return
            }
            if let response = response as? HTTPURLResponse{
                print("Debug : Response code \(response.statusCode)")

            }

            guard let data = data else { return}
            
            do {
                let coins = try JSONDecoder().decode([Coin].self, from: data)
                self.coins = coins

            } catch let error{
                print("Debug : Error  \(error)")

            }
        }.resume()
    }
}
 
