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
        viewControllers = [
            makeNav(for: makeFirstViewController(), title: "Friends", icon: "person.2.fill"),
            makeNav(for: makeSecondViewController(), title: "Cards", icon: "creditcard.fill"),
            makeNav(for: ThirdViewController(), title: "Terceira", icon: "creditcard.fill")
        ]
    }
    
    private func makeNav(for viewController: UIViewController, title: String, icon: String) -> UIViewController {
        viewController.navigationItem.largeTitleDisplayMode = .always
        
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.tabBarItem.title = title
        navigationController.navigationBar.prefersLargeTitles = true
        navigationController.tabBarItem.image = UIImage(systemName: icon, withConfiguration: UIImage.SymbolConfiguration(scale: .large))
        
        return navigationController
    }
    
    func makeFirstViewController() -> FirstViewController {
        return FirstViewController()
    }
    
    func makeSecondViewController() -> SecondViewController {
        return SecondViewController()
    }
}
