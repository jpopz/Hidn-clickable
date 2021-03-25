//
//  ViewController2.swift
//  HidnApp4
//
//  Created by Joshua Payton on 12/8/19.
//  Copyright © 2019 Joshua Payton. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation
import AVKit

class ViewController2: UIViewController {
    
    // Playing hidn MESSAGES video when clicking hidn logo
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        guard let path2 = Bundle.main.path(forResource: "Hidn-Unlock_Messages", ofType: "mov")
            else { return }
        let videoURL2 = URL(fileURLWithPath: path2)
        let player2 = AVPlayer(url: videoURL2)
        let playerViewVController2 = AVPlayerViewController()
        
        //Make video full screen
        playerViewVController2.videoGravity = AVLayerVideoGravity.resizeAspectFill
            playerViewVController2.player = player2
        
        //Mute audio in the launch video
        player2.isMuted = true
        
        self.present(playerViewVController2, animated: true) {
        playerViewVController2.player?.play()
            }
    
    func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            }
    }
}

