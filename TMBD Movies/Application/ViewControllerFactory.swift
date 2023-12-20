//
//  ViewControllerFactory.swift
//  TMBD Movies
//
//  Created by Shahzaib Khan on 19/12/2023.
//

import Foundation
import UIKit

class ViewControllerFactory {
    func moviesViewController(navigationController: UINavigationController) -> MoviesViewController {
        let viewController = Storyboard.main.instantiateViewController(identifier: MoviesViewController.storyboardIdentifier) as! MoviesViewController
        viewController.viewModel = MoviesViewModel()
        viewController.coordinator = MoviesCoordinator(navigationController: navigationController)
        return viewController
    }
    
    func movieDetailViewController(navigationController: UINavigationController, movie: MoviesModel) -> MovieDetailViewController {
        let viewController = Storyboard.main.instantiateViewController(identifier: MovieDetailViewController.storyboardIdentifier) as! MovieDetailViewController
        viewController.viewModel = MovieDetailViewModel(movie: movie)
        return viewController
    }
}
