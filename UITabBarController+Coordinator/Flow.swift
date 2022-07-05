//
//  Flow.swift
//  UITabBarController+Coordinator
//
//  Created by Glauco Dantas Beserra on 05/07/22.
//

import UIKit

enum Flow {
    case first
    case second
    case third
    
    var viewController: UIViewController {
        switch self {
        case .first: return FirstViewController()
        case .second: return SecondViewController()
        case .third: return ThirdViewController()
        }
    }
    
    var coordinator: Coordinator {
        switch self {
        case .first:
            let navigationController = UINavigationController()
            return FirstFlowCoordinator(navigationController: navigationController)
            
        case .second: return SecondFlowCoordinator()
        case .third: return ThirdFlowCoordinator()
        }
    }
    
    var title: String {
        switch self {
        case .first: return "Primeiro"
        case .second: return "Segundo"
        case .third: return "Terceiro"
        }
    }
    
    var icon: String {
        switch self {
        case .first: return "house.fill"
        case .second: return "music.quarternote.3"
        case .third: return "ellipsis.circle.fill"
        }
    }
}
