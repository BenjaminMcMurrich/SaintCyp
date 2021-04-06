//
//  Article.swift
//  SaintCyp
//
//  Created by Benjamin McMurrich on 05/04/2021.
//

import Foundation

struct Article:Decodable, Identifiable {
    let id: String
    let title: String
    let images: Images?
    let content: String
    let date: Date
    
    struct Images: Decodable {
        let thumbnail:String
        let large:String
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case images
        case content = "fulltext"
        case date
    }
}

