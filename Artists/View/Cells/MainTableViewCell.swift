//
//  MainTableViewCell.swift
//  Artists
//
//  Created by Mahmoud on 3/29/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {

      //
     // MARK: - Outlets
    //
  
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var bioLabel: UILabel!
    
    @IBOutlet weak var artistImage: UIImageView!
    
    
    override func awakeFromNib() {
        
        
        super.awakeFromNib()
      
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
