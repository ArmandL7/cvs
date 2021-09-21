//
//  Models.swift
//  FlickrArmandoHerrera
//
//  Created by Armand on 21/09/21.
//

import Foundation

struct Response: Codable {
    var photos: Photos
    var stat: String
}

struct Page {
    var page: Int = 1
    var pages: Int = 1
    var perpage: Int = 12
    var total: String = ""
}

struct Photos: Codable{
    var page: Int = 1
    var pages: Int = 1
    var perpage: Int = 12
    var total: String = ""
    var photo: [Photo]
}

struct Photo: Codable {
    var id: String
    var owner: String
    var title: String
    var url_t: String
    var height_t: Float
    var width_t: Float
    var url_m: String?
    var height_m: Int?
    var width_m: Int?
    var url_l: String?
    var height_l: Float?
    var width_l: Float?
    var url_o: String?
    var height_o: Int?
    var width_o: Int?
    var url_s: String
}

struct PhotoView: Codable {
    var id: String
    var thumbnailUrl: String
    var largeUrl: String
}

struct PhotoRow: Codable {
    var id: String
    var photos: [PhotoView]
}
struct PhotoRows: Codable{
    var page: Int
    var pages: Int
    var perpage: Int
    var total: String
    var photos: [PhotoRow]
}
