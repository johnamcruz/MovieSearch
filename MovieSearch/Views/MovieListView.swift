//
//  ContentView.swift
//  MovieSearch
//
//  Created by John M Cruz on 12/30/20.
//

import SwiftUI

struct MovieListView: View {
    let title = "Movie Search"
    @State private var searchText = ""
    var  movies : [MovieViewModel] = MovieViewModel.getMovies()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                SearchBarView(text: $searchText)
                    .padding(.top, -15)
                List(movies) { movie in
                    MovieCellView(movie: movie)
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle(title)
        }
    }
    
    init() {
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.largeTitleTextAttributes = [.font: UIFont(name: "ArialRoundedMTBold", size: 35)!]
        
        UINavigationBar.appearance().standardAppearance = navBarAppearance
    }
}

struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView()
    }
}
