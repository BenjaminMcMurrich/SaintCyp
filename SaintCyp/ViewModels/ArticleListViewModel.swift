//
//  ArticleListViewModel.swift
//  SaintCyp
//
//  Created by Benjamin McMurrich on 05/04/2021.
//

import Foundation

final class ArticleListViewModel: ObservableObject {
    @Published var articleViewModels = [ArticleViewModel]()
    
    let repository: ArticlesRepositoryProtocol
    
    init(repository:ArticlesRepositoryProtocol = ArticlesRepository()) {
        self.repository = repository
    }
    
    func onAppear() {
        repository.fetchArticles { result in
            
            switch result {
              case .success(let values):
                print("Number of news: \(values.count)")
                DispatchQueue.main.async {
                    self.articleViewModels = values.map { ArticleViewModel($0) }
                }
              case .failure(let error):
                print("we have an error! \(error)")
            }
        }
    }
    
}
