//
//  ViewController.swift
//  LabTemplate
//
//  Created by James Campagno on 6/23/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var people: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    internal func theCoolestPeople(_ nonCoolPeople: [String]) -> String {
        people = ["Jim", "Bran", "Sansa"]
        
        let person = nonCoolPeople.first!
        return person
    }
    
}
