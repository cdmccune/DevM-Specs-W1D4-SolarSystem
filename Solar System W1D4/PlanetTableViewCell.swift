//
//  PlanetTableViewCell.swift
//  Solar System W1D4
//
//  Created by Curt McCune on 5/19/22.
//

import UIKit

class PlanetTableViewCell: UITableViewCell {
    
    @IBOutlet var planetID: UILabel!
    @IBOutlet var planetImage: UIImageView!
    @IBOutlet var planetName: UILabel!
    
    //Waits for a change to be made to the planet object (table view controller to fill it with data, as that point it places the correct data into the cell elements
    var planet: Planet? {
        didSet {
            updateViews()
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    //PLaces the correct data into the cell elements
    func updateViews() {
        guard let planet = planet else {
            return
        }
        planetID.text = "Planet \(planet.planetID)"
        planetImage.image = UIImage(named: planet.planetImageName)
        planetName.text = planet.planetName
        
    }
    
}
