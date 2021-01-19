//
//  Movie.swift
//  MovieSearch
//
//  Created by John M Cruz on 12/30/20.
//

import Foundation

struct Movie : Decodable {
    var title : String
    var description : String?
    var language : String?
    var rating : Decimal?
    var image : String?
    
    enum CodingKeys : String, CodingKey {
        case title
        case description = "overview"
        case language = "original_language"
        case rating = "vote_average"
        case image = "poster_path"
    }
}
