//
//  AppDelegate.swift
//  RussianHelicopters
//
//  Created by Сергей Корнев on 17.05.2021.
//

import UIKit
import AVFoundation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        try? AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.ambient, mode: AVAudioSession.Mode.moviePlayback, options: [.mixWithOthers])
        return true
    }

}

