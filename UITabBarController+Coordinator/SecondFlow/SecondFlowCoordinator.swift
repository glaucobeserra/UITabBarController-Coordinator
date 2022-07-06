//
//  SecondFlowCoordinator.swift
//  UITabBarController+Coordinator
//
//  Created by Glauco Dantas Beserra on 05/07/22.
//

import UIKit

final class SecondFlowCoordinator: FlowCoordinator {
    
    // MARK: - Properties
    
    var flow: Flow = .second
    var parentCoordinator: Coordinator?
    var childCoordinators: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    // MARK: - Initialization
    
    required init(navigationController: UINavigationController = UINavigationController()) {
        
        self.navigationController = navigationController
        start()
    }
}
