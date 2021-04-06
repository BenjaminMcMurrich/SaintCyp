//
//  ArticleViewModel.swift
//  SaintCyp
//
//  Created by Benjamin McMurrich on 06/04/2021.
//

import Foundation

struct ArticleViewModel : Identifiable {
    
    let id:String
    
    private let article:Article
    
    var imageUrl:String? {
        return article.images?.large
    }
    
    var title:String {
        return article.title
    }
    
    var formattedDate:String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEE dd MMM"
        return formatter.string(from: article.date)
    }
    
    init(_ article:Article) {
        self.id = article.id
        self.article = article
    }
    
}
