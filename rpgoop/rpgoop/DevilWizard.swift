//
//  DevilWizard.swift
//  rpgoop
//
//  Created by Jared Sobol on 4/12/16.
//  Copyright © 2016 Appmaker. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
    
    override var loot: [String]{
        return ["Magic Wand", "Dark Amulet", "Salted Pork"]
    }
    
    override var type: String {
        return "Devil Wizard"
    }
}