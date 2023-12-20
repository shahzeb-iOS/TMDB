//
//  MoviesService.swift
//  TMBD Movies
//
//  Created by Shahzaib Khan on 19/12/2023.
//

import Foundation

class MoviesService {
    
    func fetchMovies(completion: @escaping (([MoviesModel]?, Error?) -> Void)) {
        APIClient.sendRequest(request: .popularMovies, type: MoviesResponse.self){ [weak self] (response, error) in
            if let response = response {
                Cache.movies = response.results
                let movies = self?.parseMovies(response.results)
                completion(movies, nil)
            } else if let error = error {
                completion(nil, error)
            }
        }
    }
    
    private func parseMovies(_ movies: [MoviesResponse.Movie]) -> [MoviesModel] {
        movies.map { movie in
            MoviesModel(id: movie.id, popularity: movie.popularity, voteCount: movie.voteCount, video: movie.video, posterPath: movie.posterPath, adult: movie.adult, backdropPath: movie.backdropPath, originalLanguage: movie.originalLanguage, originalTitle: movie.originalTitle, title: movie.title, voteAverage: movie.voteAverage, overview: movie.overview, releaseDate: movie.releaseDate)
        }
    }
    
}
