//
//  SearchViewState.swift
//  FlickrArmandoHerrera
//
//  Created by Armand on 21/09/21.
//

import Foundation
import Combine
import SwiftUI

class SearchViewState: ObservableObject {
    @Published var searchText: String = "health, cvs"
    @Published var dst: String = ""
    private var disposables = Set<AnyCancellable>()
    init(){
        self.$searchText
            .debounce(for: .milliseconds(1000), scheduler: DispatchQueue.main).removeDuplicates()
          .sink { searchText in
            self.dst = searchText
        }.store(in: &disposables)
    }
}
