//
//  PlanetListTableViewController.swift
//  Solar System W1D4
//
//  Created by Curt McCune on 5/19/22.
//

import UIKit

class PlanetListTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return PlanetController.planets.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Here we are letting this tableview know that we are creating a custom cell, of the type PlanetTableViewCell
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "planet", for: indexPath) as? PlanetTableViewCell  else {
            return UITableViewCell()
        }
        
        //This one grabs the planet corresponding to the row that we're in and places as plart fo the cells info to be unitilized in the PlanetTableViewCell
        let planet = PlanetController.planets[indexPath.row]
        cell.planet = planet
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPlanetDisplay" {
            if let selectedIndex = tableView.indexPathForSelectedRow {
                /// Destination: Ensure the data is moving to the correct view controller
                if let detailViewController = segue.destination as? PlanetDisplayViewController {
                    /// Object: Use the `selectedIndex` to find what object to send?
                    let planet = PlanetController.planets[selectedIndex.row]
                    /// Object: Assign that `planet` object to the landing pad we set on the `detailViewController`
                    detailViewController.planet = planet
                }
            }
        }
        
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
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
