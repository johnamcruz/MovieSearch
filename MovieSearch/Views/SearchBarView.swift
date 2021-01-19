//
//  SearchBarView.swift
//  MovieSearch
//
//  Created by John M Cruz on 12/30/20.
//

import Foundation
import SwiftUI

struct SearchBarView : UIViewRepresentable {
    @Binding var text: String
    
    func makeUIView(context: Context) -> UISearchBar {
        let searchBar = UISearchBar()
        searchBar.searchBarStyle = .minimal
        searchBar.autocapitalizationType = .none
        searchBar.placeholder = "Search..."
        searchBar.delegate = context.coordinator
        return searchBar
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.text = text
    }
    
    func makeCoordinator() -> SearchCoordinator {
        SearchCoordinator($text)
    }
}

class SearchCoordinator: NSObject, UISearchBarDelegate {
    @Binding var text: String
    
    init(_ text: Binding<String>) {
        self._text = text
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchBar.showsCancelButton = true
        text = searchText
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) { text = ""
        searchBar.resignFirstResponder()
        searchBar.showsCancelButton = false
        searchBar.endEditing(true)
    }
    
    func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
        searchBar.showsCancelButton = true
        return true
    }
}
