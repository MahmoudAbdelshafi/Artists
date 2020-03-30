//
//  ArtistTableViewCell.swift
//  Artists
//
//  Created by Mahmoud on 3/30/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import UIKit

class ArtistTableViewCell: UITableViewCell {
   
    
    //
  // MARK: - IBOutlets
 //
    @IBOutlet weak var moreInfoButton: UIButton!
    @IBOutlet weak var workImage: UIImageView!
    @IBOutlet weak var workLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
