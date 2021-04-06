//
//  ArticleCellView.swift
//  SaintCyp
//
//  Created by Benjamin McMurrich on 06/04/2021.
//

import SwiftUI

struct ArticleCellView: View {
    
    let viewModel : ArticleViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            if let imageUrl = viewModel.imageUrl {
                RemoteImage(url: imageUrl)
                            .aspectRatio(contentMode: .fit)
            }
            Text("\(viewModel.formattedDate)".uppercased())
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(Color.gray)
                .padding([.top, .horizontal])
            Text("\(viewModel.title)")
                .font(.title2)
                .fontWeight(.bold)
                .padding([.bottom, .horizontal])
        }
        .background(Color.white)
        .cornerRadius(28)
        .shadow(radius: 16, y: 16)
        .padding([.top, .horizontal])
    }
}
