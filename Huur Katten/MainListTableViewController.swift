//
//  MainListTableViewController.swift
//  Huur Katten
//
//  Created by Nick Pernisco on 5/11/18.
//  Copyright © 2018 Nick Pernisco. All rights reserved.
//

import UIKit

class CatsTableViewCell: UITableViewCell {
        @IBOutlet weak var catPhotoImageView: UIImageView!
        @IBOutlet weak var catRatingImageView: UIImageView!
        @IBOutlet weak var catNameLabel: UILabel!
        @IBOutlet weak var neighborhoodLabel: UILabel!
        @IBOutlet weak var confirmedKillsLabel: UILabel!
}

class MainListTableViewController: UITableViewController {
    
    // Pre-define my cats
    let cat1 = Cat(photoImage: #imageLiteral(resourceName: "cat1"), ratingImage: #imageLiteral(resourceName: "paws5"), name: "Sushi", neighborhood: "Leidseplein", confirmedKills: 13)
    let cat2 = Cat(photoImage: #imageLiteral(resourceName: "cat2"), ratingImage: #imageLiteral(resourceName: "paws5"), name: "Sashimi", neighborhood: "Leidseplein", confirmedKills: 18)
    let cat3 = Cat(photoImage: #imageLiteral(resourceName: "cat3"), ratingImage: #imageLiteral(resourceName: "paws3"), name: "bubba", neighborhood: "Haarlem", confirmedKills: 2)
    
    // Initialize array of cats
    var cats = [Cat]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Append each cat to my cat array
        cats.append(cat1)
        cats.append(cat2)
        cats.append(cat3)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 100.0;//Choose your custom row height
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cats.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mainListCell", for: indexPath) as! CatsTableViewCell
        
        let currentCat = cats[indexPath.row]
        
        cell.catPhotoImageView?.image = currentCat.photoImage
        cell.catRatingImageView?.image = currentCat.ratingImage
        cell.catNameLabel?.text = currentCat.name
        cell.neighborhoodLabel?.text = String(format: "Neighborhood: %@", currentCat.neighborhood)
        cell.confirmedKillsLabel?.text = String(format: "Confirmed Kills: %@", String(currentCat.confirmedKills))
    
        
        // cell.fruitImageView?.image = UIImage(named: fruitName)

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
