//
//  PlanetDisplayViewController.swift
//  Solar System W1D4
//
//  Created by Curt McCune on 5/19/22.
//

import UIKit

class PlanetDisplayViewController: UIViewController {

    @IBOutlet var planetDisplayImage: UIImageView!
    @IBOutlet var planetDiameter: UILabel!
    @IBOutlet var maxDistance: UILabel!
    @IBOutlet var dayLength: UILabel!
    
    var planet: Planet?
    
    func updateViews () {
        guard let planet = planet else {
            return
        }
        planetDisplayImage.image = UIImage(named: planet.planetImageName)
        planetDiameter.text = ("Planet's Diameter: \(planet.planetDiameter)")
        maxDistance.text = "Max distance from Sun: \(planet.maxMillionKMsFromSun)KMs"
        dayLength.text = "Day length in Earth Days: \(planet.planetDayLength)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
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
