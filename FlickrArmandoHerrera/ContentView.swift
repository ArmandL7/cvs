//
//  ContentView.swift
//  FlickrArmandoHerrera
//
//  Created by Armand on 21/09/21.
//

import SwiftUI
import Combine
import Foundation

struct ContentView: View {
    let device = UIDevice.current.userInterfaceIdiom
    
    var body: some View {
        
        NavigationView{
            VStack {
                SearchView()
                PhotosView()
            }.navigationBarTitle(Text("Flickr Pics"))
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ImageDetails: View {
    var selectedPhoto: PhotoView
    var body: some View {
        VStack{
        }
        
    }
}
