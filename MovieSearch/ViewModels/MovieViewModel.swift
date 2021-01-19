//
//  MovieViewModel.swift
//  MovieSearch
//
//  Created by John M Cruz on 12/30/20.
//

import Foundation

struct MovieViewModel : Identifiable {
    let id = UUID()
    var title : String
    var description : String
    var image : String?
    
    init(title: String, description: String, image: String?) {
        self.title = title
        self.description = description
        self.image = image
    }
}

extension MovieViewModel {
    static func getMovies() -> [MovieViewModel] {
        let service = MovieService()
        return service.getMovies().map { MovieViewModel(title: $0.title, description: $0.description ?? "", image: $0.image ?? "") }
    }
}
