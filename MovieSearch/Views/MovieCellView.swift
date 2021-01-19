//
//  MovieCellView.swift
//  MovieSearch
//
//  Created by John M Cruz on 1/18/21.
//

import SwiftUI

struct MovieCellView: View {
    let movie : MovieViewModel
    
    var body: some View {
        Text(movie.title)
            .font(.system(.title, design: .rounded))
    }
}

struct MovieCellView_Previews: PreviewProvider {
    static var previews: some View {
        MovieCellView(movie: MovieViewModel(title: "Testing", description: "", image: nil))
    }
}
