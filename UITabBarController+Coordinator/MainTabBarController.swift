//
//  MainTabBarController.swift
//  UITabBarController+Coordinator
//
//  Created by Glauco Dantas Beserra on 05/07/22.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpTabBar()
        setUpViewControllers()
    }
    
    private func setUpTabBar() {
        tabBar.isTranslucent = false
        view.backgroundColor = .white
    }
    
    private func setUpViewControllers() {
        viewControllers = [makeFlow(.first), makeFlow(.second), makeFlow(.third)]
    }
    
//    private func makeFirstFlow() -> UINavigationController {
//        let firstNavigationController = UINavigationController()
//        let firstCoordinator = FirstFlowCoordinator(navigationController: firstNavigationController)
//        firstCoordinator.start()
//        
//        return firstNavigationController
//    }
//    
//    private func makeSecondFlow() -> UINavigationController {
//        let secondCoordinator = SecondFlowCoordinator()
//        return secondCoordinator.navigationController
//    }
//    
//    private func makeThirdFlow() -> UINavigationController {
//        let thirdCoordinator = ThirdFlowCoordinator()
//        return thirdCoordinator.navigationController
//    }
    
    private func makeFlow(_ flow: Flow) ->UINavigationController {
        return flow.coordinator.navigationController
    }
}
