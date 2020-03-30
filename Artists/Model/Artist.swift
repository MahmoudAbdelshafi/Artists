//
//  Artist.swift
//  Artists
//
//  Created by Mahmoud on 3/29/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import Foundation


// MARK: - Artist
class Artist: Codable {
    let name, bio, image: String
    let works: [Work]

    init(name: String, bio: String, image: String, works: [Work]) {
        self.name = name
        self.bio = bio
        self.image = image
        self.works = works
    }
}
