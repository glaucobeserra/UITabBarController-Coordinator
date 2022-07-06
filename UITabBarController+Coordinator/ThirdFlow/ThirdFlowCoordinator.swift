//
//  ThirdFlowCoordinator.swift
//  UITabBarController+Coordinator
//
//  Created by Glauco Dantas Beserra on 05/07/22.
//

import UIKit

final class ThirdFlowCoordinator: FlowCoordinator {
    
    // MARK: - Properties
    
    var flow: Flow = .third
    var parentCoordinator: Coordinator?
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    // MARK: - Initialization
    
    required init(navigationController: UINavigationController = UINavigationController()) {
        
        self.navigationController = navigationController
        start()
    }
}
