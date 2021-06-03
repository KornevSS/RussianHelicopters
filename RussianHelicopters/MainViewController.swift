//
//  BigViewController.swift
//  RussianHelicopters
//
//  Created by Сергей Корнев on 01.06.2021.
//

import UIKit
import AVKit

class MainViewController: UIViewController {
    
    public var videoPlayer: AVQueuePlayer!
    public var videoPlayerLayer: AVPlayerLayer!
    private var playerLooper: NSObject?

    @IBOutlet var rhLogo: UIImageView!
    @IBOutlet var rhCaption: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let urlPath = Bundle.main.path(forResource: "vid", ofType: "mp4")!
        let videoURL = URL(fileURLWithPath: urlPath)
        
        let playerItem = AVPlayerItem(url: videoURL)
        
        videoPlayer = AVQueuePlayer(items: [playerItem])
        playerLooper = AVPlayerLooper(player: videoPlayer, templateItem: playerItem)
        
        videoPlayerLayer = AVPlayerLayer(player: videoPlayer)
        videoPlayerLayer.frame = view.bounds
        videoPlayerLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill

        view.layer.addSublayer(videoPlayerLayer)
        view.layer.addSublayer(rhLogo.layer)
        view.layer.addSublayer(rhCaption.layer)

        videoPlayer.play()
    }

    func remove() {
        videoPlayerLayer.removeFromSuperlayer()
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        player.play()
    }

    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        player.pause()
    }
    
}


