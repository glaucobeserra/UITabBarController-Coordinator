//
//  FirstFlowCoordinator.swift
//  UITabBarController+Coordinator
//
//  Created by Glauco Dantas Beserra on 05/07/22.
//

import UIKit

final class FirstFlowCoordinator: FlowCoordinator {
        
    // MARK: - Properties
    
    var flow: Flow = .first
    var parentCoordinator: Coordinator?
    var childCoordinators: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    // MARK: - Initialization
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
}


