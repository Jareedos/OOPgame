//
//  Kimara.swift
//  rpgoop
//
//  Created by Jared Sobol on 4/12/16.
//  Copyright © 2016 Appmaker. All rights reserved.
//

import Foundation


class Kimara: Enemy {
    
    let IMMUNE_MAX = 15
    
    override var loot: [String]{
        return ["Tough Hide", "Kimara Venum", "Rare Trident"]
    }
    
    override var type: String {
        return "Kimara"
    }
    
    override func attemptingAttack(attackPwr: Int) -> Bool {
        if attackPwr >= IMMUNE_MAX {
           return super.attemptingAttack(attackPwr)
        } else {
           return false
        }
    }
    
}