//
//  MovieDetailViewModel.swift
//  TMBD Movies
//
//  Created by Shahzaib Khan on 19/12/2023.
//

import Foundation
import Combine

class MovieDetailViewModel {
    @Published var title: String = ""
    @Published var imagePath: String = ""
    @Published var description: String = ""

    var movie: MoviesModel!

    init(movie: MoviesModel) {
        self.movie = movie
    }

    func fetchMovieDetails() {
        self.title = movie.title
        self.imagePath = movie.posterPath ?? ""
        self.description = movie.overview
    }
}
