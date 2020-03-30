//
//  ArtistViewController.swift
//  Artists
//
//  Created by Mahmoud on 3/29/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import UIKit

class ArtistViewController: UIViewController{
    
  
    var artists = [Artist]()
    
    
    //
   // MARK:- IBOutlets
  //
    
    
    @IBOutlet weak var workTableView: UITableView!
    
    
    
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   

}


}






  //
 // MARK: - Table View Data Source
//

extension ArtistViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return artists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "mainCell", for: indexPath) as? ArtistTableViewCell
        let work = artists[indexPath.row].works
        cell?.workLabel.text = work[indexPath.row].title
        
        return cell!
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return self.view.frame.size.width / 320 * 280
    
        
            }
    
    


