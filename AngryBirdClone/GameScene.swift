//
//  GameScene.swift
//  AngryBirdClone
//
//  Created by Suat Selen on 28.10.2018.
//  Copyright © 2018 mehmet selen. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
   //var bird2 = SKSpriteNode()
    
    
    
    override func didMove(to view: SKView) {
        
       /* let texture2 = SKTexture(imageNamed: "bird.png")
        bird2 = SKSpriteNode(texture: texture2)
        bird2.position = CGPoint(x: 0, y: 0)
        bird2.size = CGSize(width: self.frame.width / 14    , height: self.frame.height / 8)
        bird2.zPosition = 2
        self.addChild(bird2)
        */
        
        
        
    }
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
