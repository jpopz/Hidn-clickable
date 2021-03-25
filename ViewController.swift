//
//  ViewController.swift
//  HidnApp4
//
//  Created by Joshua Payton on 12/8/19.
//  Copyright © 2019 Joshua Payton. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit


class ViewController: UIViewController {
    
    // Playing hidn lauch video when clicking screen after "loading hidn..." goes away
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        guard let path = Bundle.main.path(forResource: "hidn_logo_animation", ofType: "mp4")
            else { return }
        let videoURL = URL(fileURLWithPath: path)
        let player = AVPlayer(url: videoURL)
        let playerViewVController = AVPlayerViewController()
        
        //Make video full screen
        playerViewVController.videoGravity = AVLayerVideoGravity.resize
        playerViewVController.player = player
        
        //Mute audio in the launch video
        player.isMuted = true
        
        self.present(playerViewVController, animated: true) {
        playerViewVController.player?.play()
      
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}
