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
    var bird = SKSpriteNode()
    var box = SKSpriteNode()
    var box2 = SKSpriteNode()
    var box3 = SKSpriteNode()
    var box4 = SKSpriteNode()
    var box5 = SKSpriteNode()
    var gameStarded = false
    
    
    override func didMove(to view: SKView) {
        
        let birdTexture = SKTexture(imageNamed: "bird.png")
        // fiziksel durumlar phsicsBody
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)

        // kuşun özellikleri
        
        bird = childNode(withName: "bird") as! SKSpriteNode
        bird.physicsBody = SKPhysicsBody(circleOfRadius: birdTexture.size().height / 15 )
        bird.physicsBody?.isDynamic = true
        bird.physicsBody?.mass = 0.1
        bird.physicsBody?.affectedByGravity = false
        
        
        
       /* let texture2 = SKTexture(imageNamed: "bird.png")
        bird2 = SKSpriteNode(texture: texture2)
        bird2.position = CGPoint(x: 0, y: 0)
        bird2.size = CGSize(width: self.frame.width / 14    , height: self.frame.height / 8)
        bird2.zPosition = 2
        self.addChild(bird2)
        */
        
        
        //box
        let boxTexture = SKTexture(imageNamed: "box.png")
        let size = CGSize(width: boxTexture.size().width / 6.5 , height: boxTexture.size().height / 6.5)
        
        box = childNode(withName: "box") as! SKSpriteNode
        box.physicsBody = SKPhysicsBody(rectangleOf: size)
        box.physicsBody?.isDynamic = true
        box.physicsBody?.affectedByGravity = true
        box.physicsBody?.allowsRotation = true
        
        box2 = childNode(withName: "box2") as! SKSpriteNode
        box2.physicsBody = SKPhysicsBody(rectangleOf: size)
        box2.physicsBody?.isDynamic = true
        box2.physicsBody?.affectedByGravity = true
        box2.physicsBody?.allowsRotation = true
        
        box3 = childNode(withName: "box3") as! SKSpriteNode
        box3.physicsBody = SKPhysicsBody(rectangleOf: size)
        box3.physicsBody?.isDynamic = true
        box3.physicsBody?.affectedByGravity = true
        box3.physicsBody?.allowsRotation = true
        
        box4 = childNode(withName: "box4") as! SKSpriteNode
        box4.physicsBody = SKPhysicsBody(rectangleOf: size)
        box4.physicsBody?.isDynamic = true
        box4.physicsBody?.affectedByGravity = true
        box4.physicsBody?.allowsRotation = true
        
        box5 = childNode(withName: "box5") as! SKSpriteNode
        box5.physicsBody = SKPhysicsBody(rectangleOf: size)
        box5.physicsBody?.isDynamic = true
        box5.physicsBody?.affectedByGravity = true
        box5.physicsBody?.allowsRotation = true
        
        
    }
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if gameStarded == false {
            
            if let touch = touches.first {
                
                let touchLocation = touch.location(in: self)
                let touchNodes = nodes(at: touchLocation)
                
                if touchNodes.isEmpty == false {
                
                    for node in touchNodes {
                        if let sprite = node as? SKSpriteNode {
                            if sprite == bird {
                                bird.position = touchLocation
                            }
                        }
                    }
                }
            }
        }
        
        
        
        //bird.physicsBody?.applyImpulse(CGVector(dx: 50, dy: 120))
        //bird.physicsBody?.affectedByGravity = true
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if gameStarded == false {
            
            if let touch = touches.first {
                
                let touchLocation = touch.location(in: self)
                let touchNodes = nodes(at: touchLocation)
                
                if touchNodes.isEmpty == false {
                    
                    for node in touchNodes {
                        if let sprite = node as? SKSpriteNode {
                            if sprite == bird {
                                bird.position = touchLocation
                            }
                        }
                    }
                }
            }
        }
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
