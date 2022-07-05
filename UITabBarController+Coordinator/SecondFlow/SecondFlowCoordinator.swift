//
//  SecondFlowCoordinator.swift
//  UITabBarController+Coordinator
//
//  Created by Glauco Dantas Beserra on 05/07/22.
//

import UIKit

final class SecondFlowCoordinator: Coordinator {
    
    // MARK: - Properties
    
    var parentCoordinator: Coordinator?
    var childCoordinators: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    // MARK: - Initialization
    
    required init(navigationController: UINavigationController = UINavigationController()) {
        
        self.navigationController = navigationController
        start()
    }
    
    func start() {
        goToSecondViewController()
    }
    
    private func goToSecondViewController() {
        let flow = Flow.second
        let viewController = flow.viewController
        
        navigationController.tabBarItem.title = flow.title
        navigationController.navigationBar.prefersLargeTitles = true
        navigationController.tabBarItem.image = UIImage(systemName: flow.icon,
                                                        withConfiguration: UIImage.SymbolConfiguration(scale: .large))
        
        
        navigationController.setViewControllers([viewController], animated: true)
    }
}
