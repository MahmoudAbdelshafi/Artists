
//
//  Work.swift
//  Artists
//
//  Created by Mahmoud on 3/29/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import Foundation

// MARK: - Work
class Work: Codable {
    let title, image, info: String

    init(title: String, image: String, info: String) {
        self.title = title
        self.image = image
        self.info = info
    }
}

