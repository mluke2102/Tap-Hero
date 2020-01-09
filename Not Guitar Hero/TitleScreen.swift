//
//  TitleScreen.swift
//  Not Guitar Hero
//
//  Created by Matt Luke on 1/3/20.
//  Copyright © 2020 MlukeApps. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit

class TitleScreen: SKScene, SKPhysicsContactDelegate {
    var startButton = SKLabelNode()
    var EasyButton = SKLabelNode()
    var MediumButton = SKLabelNode()
    var HardButton = SKLabelNode()
    var easyBackground = SKSpriteNode()
    var mediumBackground = SKSpriteNode()
    var hardBackground = SKSpriteNode()
    var Difficulty = 0.0
    
    override func didMove(to view: SKView) {
        easyBackground = self.childNode(withName: "easyBackground") as! SKSpriteNode
        mediumBackground = self.childNode(withName: "mediumBackground") as! SKSpriteNode
        hardBackground = self.childNode(withName: "hardBackground") as! SKSpriteNode
        EasyButton = self.childNode(withName: "EasyButton") as! SKLabelNode
        MediumButton = self.childNode(withName: "MediumButton") as! SKLabelNode
        HardButton = self.childNode(withName: "HardButton") as! SKLabelNode
        startButton = self.childNode(withName: "startButton") as! SKLabelNode
        
        easyBackground.alpha = 0.5
        mediumBackground.alpha = 0.0
        hardBackground.alpha = 0.0
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         let location = touches.first?.location(in: self)
        if startButton.frame.contains(location!)
        {
            
            let gameScene = GameScene(fileNamed: "GameScene")
            gameScene?.scaleMode = .aspectFill
            let reveal = SKTransition.flipHorizontal(withDuration: 0.5)
            view?.presentScene(gameScene!, transition: reveal)

            
        }
        if EasyButton.frame.contains(location!)
        {
            print("easy selected")
            Difficulty = 1.0
            let defaults = UserDefaults.standard
                           defaults.set(Difficulty, forKey: "difficulty")
            easyBackground.alpha = 0.5
            mediumBackground.alpha = 0.0
            hardBackground.alpha = 0.0
            
                           
        }
        if MediumButton.frame.contains(location!)
        {
            print("medium selected")
            Difficulty = 0.5
            let defaults = UserDefaults.standard
                           defaults.set(Difficulty, forKey: "difficulty")
            easyBackground.alpha = 0.0
            mediumBackground.alpha = 0.5
            hardBackground.alpha = 0.0
                           
        }
        if HardButton.frame.contains(location!)
        {
            print("hard selected")
            Difficulty = 0.25
            let defaults = UserDefaults.standard
                           defaults.set(Difficulty, forKey: "difficulty")
            easyBackground.alpha = 0.0
            mediumBackground.alpha = 0.0
            hardBackground.alpha = 0.5
                           
        }
    }
    
}

