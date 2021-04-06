//
//  ArticlesService.swift
//  SaintCyp
//
//  Created by Benjamin McMurrich on 05/04/2021.
//

import Foundation

protocol ArticlesApiServiceProtocol {
    func fetchArticles(completion: @escaping (Result<[Article], Error>) -> Void)
}

final class ArticlesApiService: ArticlesApiServiceProtocol {
    func fetchArticles(completion: @escaping (Result<[Article], Error>) -> Void) {
        
        let source = "https://www.saint-cyprien.com/api/news"
        let url = URL(string:source)!
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
              if let error = error {
                completion(.failure(error))
                return
              }
              fatalError("Data and error should never both be nil")
            }
            
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601
            
            let result = Result(catching: {
              try decoder.decode([Article].self, from: data)
            })
            
            completion(result)
            
        }.resume()
    }
}
