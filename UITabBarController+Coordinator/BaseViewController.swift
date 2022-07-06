//
//  BaseViewController.swift
//  UITabBarController+Coordinator
//
//  Created by Glauco Dantas Beserra on 05/07/22.
//

import UIKit

class BaseViewController: UIViewController {
    var coordinator: Coordinator?
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("\n ⚠️ coordinator is nil?", coordinator == nil)
    }
}
