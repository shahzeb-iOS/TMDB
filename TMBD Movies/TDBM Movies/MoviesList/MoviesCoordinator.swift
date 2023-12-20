//
//  MoviesCoordinator.swift
//  TMBD Movies
//
//  Created by Shahzaib Khan on 19/12/2023.
//

import Foundation
import UIKit

class MoviesCoordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func movieToDetails(movie: MoviesModel) {
        let viewModel = MovieDetailViewModel(movie: movie)
        let viewController = ViewControllerFactory().movieDetailViewController(navigationController: navigationController, movie: movie)
        viewController.title = "Movie Details"
        navigationController.pushViewController(viewController, animated: true)
    }
}
