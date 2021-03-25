//
//  hdARKit3.swift
//  HidnApp4
//
//  Created by Joshua Payton on 12/11/19.
//  Copyright © 2019 Joshua Payton. All rights reserved.
//
// hdARKit3

import Foundation
import UIKit
import ARKit
import AVKit


class hdARKit3: UIViewController {
    
    //var configuration = ARImageTrackingConfiguration()
    @IBOutlet weak var sceneView: ARSCNView!
    let configuration = ARWorldTrackingConfiguration()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sceneView.debugOptions = [ARSCNDebugOptions.showFeaturePoints, ARSCNDebugOptions.showWorldOrigin]
        self.sceneView.session.run(configuration)
        self.sceneView.autoenablesDefaultLighting = true
         // Do any additioanl setup after loading view, typically from nib.
     }
     
     override func didReceiveMemoryWarning() {
         super.didReceiveMemoryWarning()
          // Dispose of any resources that can be recreated.
     }
    
    @IBAction func add(_ sender: Any) {
        let node = SCNNode()
        node.geometry = SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 0.03)
        node.geometry?.firstMaterial?.specular.contents = UIColor.white
        node.geometry?.firstMaterial?.diffuse.contents = UIColor.blue
        let x = randomNumbers(firstNum: -0.3, secondNum: 0.3)
        let y = randomNumbers(firstNum: -0.3, secondNum: 0.3)
        let z = randomNumbers(firstNum: -0.3, secondNum: 0.3)
        node.position = SCNVector3(x,y,z)
        self.sceneView.scene.rootNode.addChildNode(node)
    }
    
    @IBAction func Reset(_ sender: Any) {
        self.restartSession()
    }
    
    func restartSession () {
        self.sceneView.session.pause()
        self.sceneView.scene.rootNode.enumerateChildNodes { (node, _)  in
            node.removeFromParentNode()
        }
        self.sceneView.session.run(configuration, options:
            [.resetTracking, .removeExistingAnchors])
        }
    func randomNumbers(firstNum: CGFloat, secondNum: CGFloat) -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UINT32_MAX) * abs(firstNum - secondNum) +
        min(firstNum,secondNum)
    }
            
    }
