//
//  ViewController5.swift
//  HidnApp4
//
//  Created by Joshua Payton on 12/8/19.
//  Copyright © 2019 Joshua Payton. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation
import AVKit

class ViewController5: UIViewController {
    
    // ViewController4 can be rotated horizontally
    func canRotate(){}
    
    // Playing hidn cloud video when clicking hidn message
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        guard let path4 = Bundle.main.path(forResource: "HM-View_1", ofType: "mov")
            else { return }
        let videoURL2 = URL(fileURLWithPath: path4)
        let player5 = AVPlayer(url: videoURL2)
        let playerViewVController5 = AVPlayerViewController()
        
        //Make video full screen
        playerViewVController5.videoGravity = AVLayerVideoGravity.resize
            playerViewVController5.player = player5
        
        //Mute audio in the launch video
        player5.isMuted = true
        
        self.present(playerViewVController5, animated: true) {
        playerViewVController5.player?.play()
            }
    
    func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            }
    }
    
    
}
