//
//  MainCoordinator.swift
//  UITabBarController+Coordinator
//
//  Created by Glauco Dantas Beserra on 05/07/22.
//

import UIKit

class MainCoordinator: Coordinator {
    
    // MARK: - Properties
    
    var parentCoordinator: Coordinator?
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    // MARK: - Initialization
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        goToMainViewController()
    }
    
    // MARK: - Main Scene
    
    private func goToMainViewController() {
        let viewController = MainViewController()
        setUpMainViewController(viewController)
        navigationController.setViewControllers([viewController], animated: true)
    }
    
    private func setUpMainViewController(_ viewController: MainViewController) {
        //
    }

}
