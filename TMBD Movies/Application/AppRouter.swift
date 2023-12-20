//
//  AppRouter.swift
//  TMBD Movies
//
//  Created by Shahzaib Khan on 19/12/2023.
//

import Foundation
import UIKit

class AppRouter {
    var window: UIWindow
        
        init(window: UIWindow) {
            self.window = window
        }
        
        func start() {
            let navigationController = UINavigationController()
            let viewControllerFactory = ViewControllerFactory()
            let viewController = viewControllerFactory.moviesViewController(navigationController: navigationController)
            viewController.title = "Popular movies"
            navigationController.pushViewController(viewController, animated: false)
            window.rootViewController = navigationController
            window.makeKeyAndVisible()
        }
}
