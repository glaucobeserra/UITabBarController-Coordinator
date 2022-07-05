//
//  FirstFlowCoordinator.swift
//  UITabBarController+Coordinator
//
//  Created by Glauco Dantas Beserra on 05/07/22.
//

import UIKit

final class FirstFlowCoordinator: Coordinator {
    
    // MARK: - Properties
    
    var parentCoordinator: Coordinator?
    var childCoordinators: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    // MARK: - Initialization
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        goToFirstViewController()
    }
    
    private func goToFirstViewController() {
        let flow = Flow.first
        let viewController = flow.viewController
        
        navigationController.tabBarItem.title = flow.title
        navigationController.navigationBar.prefersLargeTitles = true
        navigationController.tabBarItem.image = UIImage(systemName: flow.icon,
                                                        withConfiguration: UIImage.SymbolConfiguration(scale: .large))
        
        
        navigationController.setViewControllers([viewController], animated: true)
    }
    
}
