//
//  Avatar.swift
//  Avatar
//
//  Created by Nick Pernisco on 5/27/18.
//  Copyright © 2018 Nick Pernisco. All rights reserved.
//

import UIKit

class Avatar {
    var photoImage: UIImage
    var ratingImage: UIImage
    var name: String
    var neighborhood: String
    var confirmedKills: Int
    
    init(photoImage: UIImage, ratingImage: UIImage, name: String, neighborhood: String, confirmedKills: Int) {
        self.photoImage = photoImage
        self.ratingImage = ratingImage
        self.name = name
        self.neighborhood = neighborhood
        self.confirmedKills = confirmedKills
    }
    
}
