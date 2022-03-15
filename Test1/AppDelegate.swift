//
//  AppDelegate.swift
//  Test1
//
//  Created by dexiong on 2022/3/11.
//

import UIKit
import BUAdSDK
import BUFoundation
import ABUAdSDK

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
//        BUAdSDKManager.setAppID("5279919")
        
        ABUAdSDKManager.setupSDK(withAppId: "5279919") { config in
            config.logEnable = true
            return config
        }
        
        UMConfigure.initWithAppkey("60bd942f4d0228352bbe1ee6", channel: nil)
        print(UMCrashConfigure.getVersion())
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

