//
//  SearchView.swift
//  FlickrArmandoHerrera
//
//  Created by Armand on 21/09/21.
//

import Foundation
import SwiftUI
import Combine

struct SearchView: View {
    @EnvironmentObject var searchViewState: SearchViewState
    
    var body: some View {
        SearchBar(text: self.$searchViewState.searchText, placeholder: "Search ..., Free text").onAppear(perform: {
            
        })
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        Text("Welcome")
    }
}
