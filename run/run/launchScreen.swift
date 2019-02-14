//
//  launchScreen.swift
//  run
//
//  Created by Yeo Chun Sheng Joel on 14/2/19.
//  Copyright © 2019 Yeo Chun Sheng Joel. All rights reserved.
//
import UIKit
import Lottie
import AVFoundation
import AVKit

class launchScreenViewController: UIViewController {
    @IBOutlet weak var videoView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setupView()
        
        let animationView = LOTAnimationView(name: "Welcome")
        animationView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.width)
        self.view.addSubview(animationView)
        animationView.play()
    }
    
    private func setupView(){
        let path = URL(fileURLWithPath: Bundle.main.path(forResource: "Runner", ofType: "mp4")!)
        let player = AVPlayer(url: path)
        
        let newlayer = AVPlayerLayer(player: player)
        newlayer.frame = self.videoView.frame
        self.videoView.layer.addSublayer(newlayer)
        newlayer.videoGravity = AVLayerVideoGravity.resizeAspectFill
        
        player.play()
        
        player.actionAtItemEnd = AVPlayer.ActionAtItemEnd.none
        NotificationCenter.default.addObserver(self, selector: #selector(launchScreenViewController.videoDidPlayToEnd(_:)), name: NSNotification.Name(rawValue: "AVPlayerItemDidPlayToEndTimeNotification"), object: player.currentItem)
        
    }
    
    @objc func videoDidPlayToEnd(_ notification: Notification){
        let player: AVPlayerItem = notification.object as! AVPlayerItem
        player.seek(to: CMTime.zero)
    }
    
    
}

