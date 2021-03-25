//
//  ViewController6.swift
//  HidnApp4
//
//  Created by Joshua Payton on 12/8/19.
//  Copyright © 2019 Joshua Payton. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation
import AVKit

class ViewController6: UIViewController {
    
    // ViewController4 can be rotated horizontally
    func canRotate(){}
    
    // Playing hidn cloud video when clicking hidn message
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        guard let path5 = Bundle.main.path(forResource: "HM-View_2", ofType: "mov")
            else { return }
        let videoURL2 = URL(fileURLWithPath: path5)
        let player6 = AVPlayer(url: videoURL2)
        let playerViewVController6 = AVPlayerViewController()
        
        //Make video full screen
        playerViewVController6.videoGravity = AVLayerVideoGravity.resize
            playerViewVController6.player = player6
        
        //Mute audio in the launch video
        player6.isMuted = true
        
        self.present(playerViewVController6, animated: true) {
        playerViewVController6.player?.play()
            }
    
    func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            }
    }
    
    
}
