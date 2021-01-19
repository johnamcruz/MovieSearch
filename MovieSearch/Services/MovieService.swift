//
//  MovieService.swift
//  MovieSearch
//
//  Created by John M Cruz on 12/30/20.
//

import Foundation

protocol MovieServiceProtocol {
    func getMovies() -> [Movie]
}

class MovieService : MovieServiceProtocol {
    let fileName = "movies.json"
    
    func getMovies() -> [Movie] {
        let response = Bundle.main.decode(MovieResponse.self, from: fileName)
        return response.results
    }
}
