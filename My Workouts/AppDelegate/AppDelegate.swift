//
//  AppDelegate.swift
//  WorkoutDemo
//
//  Created by Vishal Patel on 18/10/19.
//  Copyright © 2019 Vishal Patel. All rights reserved.
//

import UIKit
import FirebaseCore
import FirebaseAuth
import FirebaseFirestore

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        FirebaseApp.configure()
        window = UIWindow(frame: UIScreen.main.bounds)
        
        if Auth.auth().currentUser != nil {
            window?.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()
        } else {
            window?.rootViewController = UIStoryboard(name: "Auth", bundle: nil).instantiateInitialViewController()
        }
        
        
        window?.makeKeyAndVisible()
        // Override point for customization after application launch.
        
        // Set navigation bar appearance
//        UINavigationBar.appearance().backgroundColor = UIColor.systemBackground
//        UINavigationBar.appearance().isTranslucent = false
//        UINavigationBar.appearance().shadowImage = UIImage()
        UIBarButtonItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: CustomFont.nexaBold, size: 17.0)!, NSAttributedString.Key.foregroundColor: UIColor.white], for: .normal)
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
}
