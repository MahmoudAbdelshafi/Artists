//
//  ArtistViewController.swift
//  Artists
//
//  Created by Mahmoud on 3/29/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import UIKit

class ArtistViewController: UIViewController{
    
  

    var artist:Artist?
    
    
    //
   // MARK:- IBOutlets
  //
    
    
    @IBOutlet weak var workTableView: UITableView!
    
    
    
    

    override func viewDidLoad() {
        self.title = artist?.name
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   

}


}






  //
 // MARK: - Table View Data Source
//

extension ArtistViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return artist?.works.count ?? 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "artistCell", for: indexPath) as? ArtistTableViewCell
        let artistWork = artist?.works
        cell?.workLabel?.text = artistWork?[indexPath.row].title
        

       cell?.workImage.image = UIImage(named: "8")
//
        
        return cell!
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return self.view.frame.size.width / 320 * 280
    
        
            }
    
    


