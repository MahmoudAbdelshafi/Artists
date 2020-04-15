//
//  ArtistTableViewCell.swift
//  Artists
//
//  Created by Mahmoud on 3/30/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import UIKit

//MARK: - TableView Action Protocol
protocol InfoDeleget {
    func infoButtonFunc(index:Int)
}



class ArtistTableViewCell: UITableViewCell {
   
    
    //MARK:- instance and properties
    
    var cellDeleget:InfoDeleget?
    var index:IndexPath?
    
  
    // MARK: - IBOutlets
 
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
    
    @IBAction func moreInfoPressed(_ sender: Any) {
        
        if cellDeleget != nil{
            cellDeleget!.infoButtonFunc(index: index!.row)
        }
    }
 
    
}
