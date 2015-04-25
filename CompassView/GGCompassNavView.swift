//
//  GGCompassNavView.swift
//  CompassView
//
//  Created by Tommy Doyle on 4/25/15.
//  Copyright (c) 2015 Tommy Doyle. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation

class GGCompassNavView: UIView {
    @IBOutlet weak var destinationLabel: UILabel!
    @IBOutlet weak var distnaceToGo: UILabel!
    
    var destinationName : String = "No Where!" {
        didSet {
            destinationLabel.text? = destinationName;
        }
    };
    
    // Convience Instantiator for GGCompassNavView
    class func NewGGCompassNavView(owner : AnyObject) -> GGCompassNavView {
        var newView: AnyObject? = NSBundle.mainBundle().loadNibNamed("GGCompassNavView", owner: owner, options: nil).first;
        return (newView as! GGCompassNavView);
    }
    
    func updateDirectionToDestination(newDirection : CLLocationDirection) {
        
    }
    
    func updateDistanceToDestination(newDistance : CLLocationDistance) {
        distnaceToGo.text? = "\(newDistance)ft";
    }
    
    func updateUsersDirection(newDirection : CLLocationDirection) {
        
    }
    
}
