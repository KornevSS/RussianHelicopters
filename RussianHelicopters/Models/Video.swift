//
//  Video.swift
//  RussianHelicopters
//
//  Created by Сергей Корнев on 01.06.2021.
//

import Foundation
import UIKit

struct Video {
    let url: URL
//    let filmImage: UIImage
    let title: String
    
    static func localVideos() -> [Video] {
        var videos: [Video] = []
        
        let titles = ["RHDemo"]
        let movieNames = ["vid"]
        
        for (index, name) in movieNames.enumerated() {
            let urlPath = Bundle.main.path(forResource: name, ofType: "mp4")!
            let url = URL(fileURLWithPath: urlPath)
   //         let video = Video(url: url, filmImage: UIImage(named: titles[index])!, title: titles[index])
            let video = Video(url: url, title: titles[index])

            videos.append(video)
        }
        return videos
    }
    

}
