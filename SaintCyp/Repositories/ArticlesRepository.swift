//
//  ArticlesRepository.swift
//  SaintCyp
//
//  Created by Benjamin McMurrich on 05/04/2021.
//

import Foundation

protocol ArticlesRepositoryProtocol {
    func fetchArticles(completion: @escaping (Result<[Article], Error>) -> Void)
}

final class ArticlesRepository: ArticlesRepositoryProtocol {
    private let apiService: ArticlesApiServiceProtocol
    
    init(apiService:ArticlesApiServiceProtocol = ArticlesApiService()) {
        self.apiService = apiService
    }
    
    func fetchArticles(completion: @escaping (Result<[Article], Error>) -> Void) {
        apiService.fetchArticles(completion: completion)
    }
}
