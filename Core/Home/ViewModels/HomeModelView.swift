//
//  HomeModelView.swift
//  Crypto App
//
//  Created by Dinith Hasaranga on 2023-02-12.
//

import SwiftUI

class HomeModelView: ObservableObject {
    
    @Published var coins = [Coin]()
    @Published var topMovingCoins = [Coin]()
    @Published var isLoaded = false

    
    init(){
        fetchCoinData()
    }
    
    func fetchCoinData(){
        
        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=1h&locale=en"
        
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error{
                print("Debug : error \(error.localizedDescription)")
                self.isLoaded = false
                return
            }
            if let response = response as? HTTPURLResponse{
                print("Debug : Response code \(response.statusCode)")
                self.isLoaded = true

            }

            guard let data = data else { return}
            
            do {
                let coins = try JSONDecoder().decode([Coin].self, from: data)
                DispatchQueue.main.async {
                    self.coins = coins
                    self.configureTopMovingCoins()
                    self.isLoaded = true

                }

            } catch let error{
                self.isLoaded = false
                print("Debug : Error  \(error)")

            }
        }.resume()
    }
    
    func configureTopMovingCoins(){
        let topMovers = coins.sorted(by: {$0.priceChangePercentage24H > $1.priceChangePercentage24H})
        self.topMovingCoins = Array(topMovers.prefix(5 ))
    }
}
 
