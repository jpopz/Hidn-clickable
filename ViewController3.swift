//
//  ViewController3.swift
//  HidnApp4
//
//  Created by Joshua Payton on 12/8/19.
//  Copyright © 2019 Joshua Payton. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation
import AVKit

class ViewController3: UIViewController {
    
    // ViewController3 can be rotated horizontally
    func canRotate(){}
    
    // Playing hidn cloud video when clicking hidn message
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        guard let path3 = Bundle.main.path(forResource: "hidn_ily_sky_cloud_hm", ofType: "mov")
            else { return }
        let videoURL2 = URL(fileURLWithPath: path3)
        let player3 = AVPlayer(url: videoURL2)
        let playerViewVController3 = AVPlayerViewController()
        
        //Make video full screen
        playerViewVController3.videoGravity = AVLayerVideoGravity.resize
            playerViewVController3.player = player3
        
        //Mute audio in the launch video
        player3.isMuted = true
        
        self.present(playerViewVController3, animated: true) {
        playerViewVController3.player?.play()
            }
    
    func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            }
    }
    
    
}
