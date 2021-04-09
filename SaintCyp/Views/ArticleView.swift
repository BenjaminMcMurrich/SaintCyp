//
//  ArticleView.swift
//  SaintCyp
//
//  Created by Benjamin McMurrich on 06/04/2021.
//

import SwiftUI

struct ArticleView: View {

    var viewModel: ArticleViewModel
    @Binding var show: Bool
    var animation: Namespace.ID

    var body: some View {

        Text("\(viewModel.title)")
            .font(.title)
            .fontWeight(.bold)
            .matchedGeometryEffect(id: viewModel.title, in: animation)
    }
}
