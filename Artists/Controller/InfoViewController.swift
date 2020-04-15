//
//  InfoViewController.swift
//  Artists
//
//  Created by Mahmoud on 3/31/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
   
    
    //MARK:- instance and properties
    var info = String()
    
    
    //MARK: - IBOutlets
    @IBOutlet weak var infoLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.text = info
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
