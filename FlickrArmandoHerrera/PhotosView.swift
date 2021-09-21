//
//  PhotosView.swift
//  FlickrArmandoHerrera
//
//  Created by Armand on 21/09/21.
//

import SwiftUI
struct PhotosView: View {
    @EnvironmentObject var flickrApi: FlickrApi
    @State var selection: String? = nil
    
    var body: some View {
        VStack{
            ActivityIndicator(shouldAnimate: $flickrApi.loading).padding(0)
                
            List (flickrApi.photoRows, id: \.id){ photoRow in
                
                
            }.onAppear(perform: {
                UITableView.appearance().separatorStyle = .none
            })
        }
    }
}

struct PhotosView_Previews: PreviewProvider {
    static var previews: some View {
        PhotosView()
    }
}
