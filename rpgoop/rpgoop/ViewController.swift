//
//  ViewController.swift
//  rpgoop
//
//  Created by Jared Sobol on 4/10/16.
//  Copyright © 2016 Appmaker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printLbl: UILabel!
    
    @IBOutlet weak var playerHpLbl: UILabel!

    @IBOutlet weak var enemyHpLbl: UILabel!

    @IBOutlet weak var enemyImg: UIImageView!

    @IBOutlet weak var chestBtn: UIButton!
    
    var player: Player!
    var enemy: Enemy!
    var chestMessage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player(name: "Jareedos", hp: 100, attackPwr: 20)
        
          generateRandEnemy()
        
        playerHpLbl.text = "\(player.hp) HP"
        
        
    }
    
    func generateRandEnemy() {
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0 {
            enemy = Kimara(startingHp: 200, attackPwr: 15)
        } else {
            enemy = DevilWizard(startingHp: 100, attackPwr: 10)
        }
        
        enemyImg.hidden = false
        
    }

    @IBAction func onChestTapped(sender: AnyObject) {
        chestBtn.hidden = true
        printLbl.text = chestMessage
         NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: #selector(ViewController.generateRandEnemy), userInfo: nil, repeats: false)
    }
    
    @IBAction func onAttackBtnPressed(sender: AnyObject) {
        
        if enemy.attemptingAttack(player.attackPwr){
            printLbl.text = "Attacked \(enemy.type) for \(player.attackPwr) HP"
            enemyHpLbl.text = "\(enemy.hp) HP"
            
        } else {
            printLbl.text = "Attack was unsuccessful"
        }
        
        if let loot = enemy.dropLoot(){
            player.addItemInventory(loot)
            chestMessage = " \(player.name) found \(loot)"
            chestBtn.hidden = false
        }
        
        if !enemy.isAlive{
            printLbl.text = "\(enemy.type)"
            enemyHpLbl.text = ""
            enemyImg.hidden = true
            
        }
    }
}


