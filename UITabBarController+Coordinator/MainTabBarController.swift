//
//  MainTabBarController.swift
//  UITabBarController+Coordinator
//
//  Created by Glauco Dantas Beserra on 05/07/22.
//

import UIKit

final class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpTabBar()
        setUpViewControllers()
    }
    
    private func setUpTabBar() {
        view.tintColor = .darkGray
        tabBar.isTranslucent = false
        view.backgroundColor = .white
    }
    
    private func setUpViewControllers() {
        viewControllers = [makeFlow(.first), makeFlow(.second), makeFlow(.third)]
    }
    
    private func makeFlow(_ flow: Flow) ->UINavigationController {
        return flow.coordinator.navigationController
    }
}
