//
//  FrameworkGridView.swift
//  Apple Frameworks
//
//  Created by Manyuchi, Carrington C on 2024/08/13.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
        
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns, content: {
                    ForEach(MockData.frameworks, content: { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    })
                })
                .navigationTitle("🍎 Frameworks")
                .fullScreenCover(isPresented: $viewModel.isShowingDetailsView, content: {
                    FrameworkDetailsView(framework: viewModel.selectedFramework!,
                                         isShowingDetailsView: $viewModel.isShowingDetailsView)
                })
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}
