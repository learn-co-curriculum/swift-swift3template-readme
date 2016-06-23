//
//  ViewControllerSpec.swift
//  LabTemplate
//
//  Created by James Campagno on 6/23/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


import Quick
import Nimble
@testable import LabTemplate


class ViewControllerSpec: QuickSpec {
    
    override func spec() {
        
        describe("theCoolestPeople(_:)") {
            
            let testVC = ViewController()
            
            let peeps = ["Rickon", "Ned"]
            let firstPeep = testVC.theCoolestPeople(peeps)
            
            it("Creates an array of the coolest people") {
                
                expect(firstPeep).to(match("Rickon"))
                
            }
            
        
            
            
            
            
        }
        
        
        
    }
    
    
    
}
