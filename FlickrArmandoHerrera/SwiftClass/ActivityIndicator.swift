//
//  ActivityIndicator.swift
//  FlickrArmandoHerrera
//
//  Created by Armand on 21/09/21.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    @Binding var shouldAnimate: Bool
    func makeUIView(context: Context) -> UIActivityIndicatorView{
        return UIActivityIndicatorView()
    }
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context){
        if( self.shouldAnimate ){
            uiView.startAnimating()
        } else {
            uiView.stopAnimating()
        }
    }
}
