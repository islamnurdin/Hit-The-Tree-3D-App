//
//  GameViewController.swift
//  HItTheTree
//
//  Created by ITLabAdmin on 8/3/18.
//  Copyright © 2018 ITLabAdmin. All rights reserved.
//

import UIKit
import SceneKit

class GameViewController: UIViewController {

    var sceneView: SCNView!
    var scene: SCNScene!
    
    var ballNode: SCNNode!
    var selfieStickNode: SCNNode!

    var motionForse = SCNVector3(0, 0, 0)
    
    var sounds:[String:SCNAudioSource]
    
    override func viewDidLoad() {
        setupScene()
        setupNodes()
    }

    func setupScene(){
        sceneView = self.view as! SCNView
        sceneView.allowsCameraControl = true
        scene = SCNScene(named: "art.scnassets/MainScene.scn")
        sceneView.scene = scene
    }
    
    func setupNodes(){
        
    }
    
    override var shouldAutorotate: Bool {
        return false
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

}
