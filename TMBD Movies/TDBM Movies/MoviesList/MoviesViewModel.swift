//
//  MoviesViewModel.swift
//  TMBD Movies
//
//  Created by Shahzaib Khan on 19/12/2023.
//

import Foundation
class MoviesViewModel {
    
    @Published var movies: [MoviesModel] = []
    var moviesService = MoviesService()
    
    func fetchMovies() {
        moviesService.fetchMovies() { [weak self] movies, error in
            if let movies {
                self?.movies = movies
            } else if let error {
                debugPrint((error as? APIError)?.errorDescription ?? "")
            }
        }
    }
}
