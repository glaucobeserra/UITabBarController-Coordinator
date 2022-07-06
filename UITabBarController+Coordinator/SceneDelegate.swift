//
//  SceneDelegate.swift
//  UITabBarController+Coordinator
//
//  Created by Glauco Dantas Beserra on 05/07/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var coordinator: MainCoordinator?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        
        guard let scene = (scene as? UIWindowScene) else { return }
        window = startMain(flow: .tabBar, with: scene)
    }
}

extension SceneDelegate {
    
    enum MainFlow {
        case coordinator
        case tabBar
    }
    
    func startMain(flow: MainFlow, with scene: UIWindowScene) -> UIWindow {
        var mainViewController: UIViewController?
        
        switch flow {
        case .coordinator:
            mainViewController = UINavigationController()
            coordinator = MainCoordinator(navigationController: mainViewController as! UINavigationController)
            coordinator?.start()
            
        case .tabBar:
            mainViewController = MainTabBarController()
        }
        
        guard let mainViewController = mainViewController else { return UIWindow() }
        
        let window = UIWindow(windowScene: scene)
        window.rootViewController = mainViewController
        window.makeKeyAndVisible()
        
        return window
    }
}
