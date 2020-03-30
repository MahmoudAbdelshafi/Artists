//
//  DataModel.swift
//  Artists
//
//  Created by Mahmoud on 3/29/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import Foundation


// MARK: - Artists
class Artists: Codable {
    let artists: [Artist]

    init(artists: [Artist]) {
        self.artists = artists
    }
}


