//
//  GameScene.swift
//  Not Guitar Hero
//
//  Created by Matt Luke on 12/16/19.
//  Copyright © 2019 MlukeApps. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var redButton = SKSpriteNode()
    var yellowButton = SKSpriteNode()
    var greenButton = SKSpriteNode()
    var blueButton = SKSpriteNode()
    var redNote = SKSpriteNode()
    var yellowNote = SKSpriteNode()
    var greenNote = SKSpriteNode()
    var blueNote = SKSpriteNode()
    var timer: Timer?
    
    
    override func didMove(to view: SKView) {
        redButton.physicsBody?.categoryBitMask = 1
        yellowButton.physicsBody?.categoryBitMask = 2
        greenButton.physicsBody?.categoryBitMask = 3
        blueButton.physicsBody?.categoryBitMask = 4
        
        
        
        makeNote()
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(makeNote), userInfo: nil, repeats: true)
        
    }
    
    
    
    @objc func makeNote()
    {
        
        let number = Int.random(in: 1...4)
        if number == 1
        {
            redNote = SKSpriteNode(imageNamed: "RedNote")
            redNote.size = CGSize(width: 160, height: 160)
            redNote.position = CGPoint(x: -270, y: 800)
            redNote.name = "RedNote"
            addChild(redNote)

        }
        else if number == 2
        {
           yellowNote = SKSpriteNode(imageNamed: "RedNote")
           yellowNote.size = CGSize(width: 160, height: 160)
           yellowNote.position = CGPoint(x: -270, y: 800)
           yellowNote.name = "RedNote"
           addChild(yellowNote)

        }
        else if number == 3
        {
            greenNote = SKSpriteNode(imageNamed: "RedNote")
            greenNote.size = CGSize(width: 160, height: 160)
            greenNote.position = CGPoint(x: -270, y: 800)
            greenNote.name = "RedNote"
            addChild(greenNote)

        }
        else if number == 4
        {
            blueNote = SKSpriteNode(imageNamed: "RedNote")
            blueNote.size = CGSize(width: 160, height: 160)
            blueNote.position = CGPoint(x: -270, y: 800)
            blueNote.name = "RedNote"
            addChild(redNote)

        }
        
        
        redNote = SKSpriteNode(imageNamed: "RedNote")
        redNote.size = CGSize(width: 160, height: 160)
        redNote.position = CGPoint(x: -270, y: 800)
        redNote.name = "RedNote"
        addChild(redNote)
        
        
        let moveDown = SKAction.moveTo(y: -800, duration: 3)
        
        redNote.run(moveDown)
        
    }
    
    
    
}
