//
//  Cache.swift
//  TMBD Movies
//
//  Created by Shahzaib Khan on 19/12/2023.
//

import Foundation

struct Cache {
    static var movies: [MoviesResponse.Movie]? {
        get {
            if let data = UserDefaults.standard.value(forKey: "MoviesList") as? Data {
                do {
                    return try JSONDecoder().decode([MoviesResponse.Movie].self, from: data)
                } catch {
                    debugPrint(error)
                }
            }
            return nil
        } set {
            do {
                let data = try JSONEncoder().encode(newValue)
                UserDefaults.standard.set(data, forKey: "MoviesList")
                UserDefaults.standard.synchronize()
            } catch {
                debugPrint(error)
            }
        }
    }
}
