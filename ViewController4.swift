//
//  ViewController4.swift
//  HidnApp4
//
//  Created by Joshua Payton on 12/8/19.
//  Copyright © 2019 Joshua Payton. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation
import AVKit

class ViewController4: UIViewController {
    
    // ViewController4 can be rotated horizontally
    func canRotate(){}
    
    // Playing hidn cloud video when clicking hidn message
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        guard let path4 = Bundle.main.path(forResource: "hidn_ily_sky_cloud_hm", ofType: "mov")
            else { return }
        let videoURL2 = URL(fileURLWithPath: path4)
        let player4 = AVPlayer(url: videoURL2)
        let playerViewVController4 = AVPlayerViewController()
        
        //Make video full screen
        playerViewVController4.videoGravity = AVLayerVideoGravity.resize
            playerViewVController4.player = player4
        
        //Mute audio in the launch video
        player4.isMuted = true
        
        self.present(playerViewVController4, animated: true) {
        playerViewVController4.player?.play()
            }
    
    func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            }
    }
    
    
}
