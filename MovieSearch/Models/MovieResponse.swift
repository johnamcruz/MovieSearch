//
//  MovieResponse.swift
//  MovieSearch
//
//  Created by John M Cruz on 12/30/20.
//

import Foundation

struct MovieResponse : Decodable {
    var page : Int
    var results : [Movie]
    var totalPages : Int
    var totalResults : Int
    
    enum CodingKeys : String, CodingKey {
        case page
        case results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}
