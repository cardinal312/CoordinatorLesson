//
//  AppDelegate.swift
//  Coordinator
//
//  Created by Macbook on 27/12/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var mainCoordinator: MainCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let navigationController = UINavigationController()
        mainCoordinator = MainCoordinator()
        mainCoordinator?.navigationController = navigationController
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        mainCoordinator?.start()
        return true
    }
}

