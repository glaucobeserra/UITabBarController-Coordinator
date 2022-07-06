//
//  MainFlowCoordinator.swift
//  UITabBarController+Coordinator
//
//  Created by Glauco Dantas Beserra on 05/07/22.
//

import UIKit

protocol FlowCoordinator: Coordinator {
    var flow: Flow { get }
    func goToMainFlowViewController()
}

extension FlowCoordinator {
    func start() {
        goToMainFlowViewController()
    }
    
    func goToMainFlowViewController() {
        let viewController = flow.viewController
        viewController.coordinator = self
        
        navigationController.tabBarItem.title = flow.title
        navigationController.navigationBar.prefersLargeTitles = true
        navigationController.tabBarItem.image = UIImage(systemName: flow.icon,
                                                        withConfiguration: UIImage.SymbolConfiguration(scale: .large))
        
        
        navigationController.setViewControllers([viewController], animated: true)
    }
}
