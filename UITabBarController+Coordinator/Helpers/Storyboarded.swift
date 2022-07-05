//
//  Storyboarded.swift
//  UITabBarController+Coordinator
//
//  Created by Glauco Dantas Beserra on 05/07/22.
//

import UIKit

public protocol Storyboarded {
    static func instantiate() -> Self
    /// The UIStoryboard to use when we want to instantiate this ViewController
    static var sceneStoryboard: UIStoryboard { get }
    /// The scene identifier to use when we want to instantiate this ViewController from its associated Storyboard
    static var sceneIdentifier: String { get }
}

extension Storyboarded {
    /// By default, use the `sceneIdentifier` with the same name as the class
    public static var sceneIdentifier: String {
        return String(describing: self)
    }
    
}

extension Storyboarded where Self: UIViewController {
    
    public static func instantiate() -> Self {
        let storyboard = Self.sceneStoryboard
        
        if let viewController = storyboard.instantiateInitialViewController() as? Self {
            return viewController
        } else if let viewController = storyboard.instantiateViewController(withIdentifier: self.sceneIdentifier) as? Self {
            return viewController
        } else {
            fatalError("The viewController '\(self.sceneIdentifier)' of '\(storyboard)' is not of class '\(self)' or is not the initial view controller")
        }
    }
    
    public static func instantiateFrom(_ storyboard: String) -> Self {
        let bundle = Bundle(for: self)
        let storyboard = UIStoryboard(name: storyboard, bundle: bundle)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: self.sceneIdentifier) as? Self else {
            fatalError("⚠️ Unable to found instantiated storyboard \(self.sceneIdentifier)")
        }
        return viewController
    }
    
}
