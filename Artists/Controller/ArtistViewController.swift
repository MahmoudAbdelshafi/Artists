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
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "info" {
            let destVC = segue.destination as! InfoViewController
            
            
            destVC.info = sender as! String
        }
        
        
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
        cell?.cellDeleget = self
        cell?.index = indexPath
        
        return cell!
    }
    
    
    
}


//
// MARK: - Table View Delgate method
//

extension ArtistViewController: UITableViewDelegate{
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
    }
}


//MARK: - Table View Info Protocol

extension ArtistViewController: InfoDeleget{
    func infoButtonFunc(index: Int) {
        if let work = artist?.works[index]{ 
            let info = work.info
            performSegue(withIdentifier: "info", sender: info)
            
        }
    }
    
    
}
