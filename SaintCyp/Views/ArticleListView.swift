//
//  ArticleListView.swift
//  SaintCyp
//
//  Created by Benjamin McMurrich on 05/04/2021.
//

import SwiftUI

struct ArticleListView: View {
    
    @StateObject private var viewModel = ArticleListViewModel()
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Actualités").font(.title).fontWeight(.bold).padding()
                ForEach(viewModel.articleViewModels) { articleViewModel in
                    ArticleCellView(viewModel: articleViewModel)
                }
            }
        }
        .onAppear() {
            viewModel.onAppear()
        }
    }
}



struct ArticleListView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleListView()
    }
}

