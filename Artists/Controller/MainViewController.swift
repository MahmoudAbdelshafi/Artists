//
//  ViewController.swift
//  Artists
//
//  Created by Mahmoud on 3/28/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import UIKit

class MainViewController: UIViewController,ArtistModelDeleget {
    
    var artists = [Artist]()
    let model:Network = Network()
    
    
    
    
     //
    //MARK: - IBOutlets
   //
    
    
    @IBOutlet weak var mainTableView: UITableView!
   
    override func viewDidLoad() {
        model.deleget = self
        model.loadData()
        
    }

    func dataReady() {
        self.artists = model.artists
        self.mainTableView.reloadData()
       
    }
    
    
    
    ///
    //  MARK: - Segue -> ArtistViewController
    ///
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mainToDetail" {
            let destVC = segue.destination as! ArtistViewController
        
            
            destVC.artist = sender as? Artist

        }
    }
}





  //
 // MARK: - Table View Data Source
//

extension MainViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return artists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "mainCell", for: indexPath) as? MainTableViewCell
        var image = [String]()
       
        
        cell?.bioLabel.text = artists[indexPath.row].bio
        
        cell?.nameLabel.text = artists[indexPath.row].name
        image = [artists[indexPath.row].image]
   
        if let imageForRow = UIImage(named: artists[indexPath.row].image), indexPath.row >= image.count {
            
                
               //cell?.imageView?.image = imageForRow
            
            
           } else {
               cell?.imageView?.image = UIImage(named: "nothing.jpg")
           }
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.frame.size.width / 320 * 280
    
        
            }
    
    
}




//
// MARK: - UITable View Deleget
//
extension MainViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
       
        let artistWork = artists[indexPath.row]
        performSegue(withIdentifier: "mainToDetail", sender: artistWork)
       
    }
    
    
}
