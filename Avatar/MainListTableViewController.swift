//
//  MainListTableViewController.swift
//  Avatar
//
//  Created by Nick Pernisco on 5/11/18.
//  Copyright © 2018 Nick Pernisco. All rights reserved.
//

import UIKit

class AvatarTableViewCell: UITableViewCell {
        @IBOutlet weak var avatarPhotoImageView: UIImageView!
        @IBOutlet weak var avatarRatingImageView: UIImageView!
        @IBOutlet weak var avatarNameLabel: UILabel!
        @IBOutlet weak var neighborhoodLabel: UILabel!
        @IBOutlet weak var confirmedKillsLabel: UILabel!
}

class MainListTableViewController: UITableViewController {
    
    // Pre-define my avatars
    let avatar1 = Avatar(photoImage:#imageLiteral(resourceName: "image1"), ratingImage: #imageLiteral(resourceName: "sword5"), name: "Alakar", neighborhood: "Leidseplein", confirmedKills: 13)
    let avatar2 = Avatar(photoImage: #imageLiteral(resourceName: "image2"), ratingImage: #imageLiteral(resourceName: "sword5"), name: "Brynium", neighborhood: "Leidseplein", confirmedKills: 18)
    let avatar3 = Avatar(photoImage: #imageLiteral(resourceName: "image3"), ratingImage: #imageLiteral(resourceName: "sword3"), name: "Catalonious", neighborhood: "Haarlem", confirmedKills: 2)
    
    // Initialize array of cats
    var avatars = [Avatar]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Append each cat to my cat array
        avatars.append(avatar1)
        avatars.append(avatar2)
        avatars.append(avatar3)
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
        return avatars.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mainListCell", for: indexPath) as! AvatarTableViewCell
        
        let currentAvatar = avatars[indexPath.row]
        
        cell.avatarPhotoImageView?.image = currentAvatar.photoImage
        cell.avatarRatingImageView?.image = currentAvatar.ratingImage
        cell.avatarNameLabel?.text = currentAvatar.name
        cell.neighborhoodLabel?.text = String(format: "Neighborhood: %@", currentAvatar.neighborhood)
        cell.confirmedKillsLabel?.text = String(format: "Confirmed Kills: %@", String(currentAvatar.confirmedKills))
    
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
