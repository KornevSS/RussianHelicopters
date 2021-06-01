//
//  BigViewController.swift
//  RussianHelicopters
//
//  Created by Сергей Корнев on 01.06.2021.
//

import UIKit
import AVKit

class BigViewController: UIViewController {
    
    let videoPreviewLooper = VideoLooperView(videos: Video.localVideos())
    
    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(videoPreviewLooper)
        
        videoPreviewLooper.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        videoPreviewLooper.backgroundColor = .black
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        videoPreviewLooper.play()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        videoPreviewLooper.pause()
    }
    
}


