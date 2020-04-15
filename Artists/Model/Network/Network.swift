//
//  Network.swift
//  Artists
//
//  Created by Mahmoud on 3/29/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import Foundation

//
// MARK: - Deleget Protocol
//
protocol ArtistModelDeleget {
    func dataReady()
}




//
// MARK: - Network 
//

class Network{
    
    
    var artists = [Artist]()
    var deleget:ArtistModelDeleget?
    
    
    //
    // MARK: - Getting Data From JSONFile
    //
    
    func loadData() {
        guard let path = Bundle.main.path(forResource: "artists", ofType: "json") else { return }
        let url = URL(fileURLWithPath: path)
        do {
            let data = try Data(contentsOf: url)
            let downloadeArtists = try JSONDecoder().decode(Artists.self, from: data )
            self.artists = downloadeArtists.artists
            if self.deleget != nil{
                deleget?.dataReady()
            }
        }catch{
            print(error)
        }
    }
    
    
    
    
    
    
}
